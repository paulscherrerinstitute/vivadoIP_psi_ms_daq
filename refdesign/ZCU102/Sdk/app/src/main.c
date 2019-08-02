/*############################################################################
#  Copyright (c) 2019 by Paul Scherrer Institute, Switzerland
#  All rights reserved.
#  Authors: Oliver Bruendler
############################################################################*/

//*******************************************************************************
// Includes
//*******************************************************************************
#include <axis_data_gen.h>
#include "psi_ms_daq.h"
#include <stdio.h>
#include <xparameters.h>
#include <stdbool.h>
#include <xscugic.h>
#include <sleep.h>
#include <xil_cache.h>

//*******************************************************************************
// Static variables
//*******************************************************************************
static AxisDataGen_Inst_t str0Gen;
static AxisDataGen_Inst_t str1Gen;
static AxisDataGen_Inst_t* const str0Hndl = &str0Gen;
static AxisDataGen_Inst_t* const str1Hndl = &str1Gen;
static PsiMsDaq_IpHandle daqHandle;
static PsiMsDaq_StrHandle daqStr0;
static PsiMsDaq_StrHandle daqStr1;
static XScuGic gicInst;
static char buf[20000*4];


//*******************************************************************************
// Interrupt handling
//*******************************************************************************

//Xilinx IRQ handler, just call the psi_ms_daq IRQ handler
void PsiMsDaqIrqHandler(void* arg)
{
	printf("\nIrq received\n");
	PsiMsDaq_IpHandle ipHandle = (PsiMsDaq_IpHandle) arg;
	//Call IP-handling function
	PsiMsDaq_HandleIrq(ipHandle);
}

//Stream 0 IRQ
void Str0Irq(PsiMsDaq_WinInfo_t winInfo, void* arg)
{
	//Print notification
	printf("\nRecieved Str0 IRQ: win %d\n", winInfo.winNr);
	PsiMsDaq_RetCode_t ret;

	//Make sue we really read from Memory and not from cache
	Xil_DCacheInvalidateRange(0x40000000, 32*16);

	//Print timestamp
	uint64_t timestamp;
	ret = PsiMsDaq_StrWin_GetTimestamp(winInfo, &timestamp);
	if (PsiMsDaq_RetCode_Success != ret) printf("PsiMsDaq_StrWin_GetTimestamp() failed: %d\n", ret);
	printf("> Timestamp %016lx\n", timestamp);

	//Get data and print it (mark trigger sample with ..=T)
	ret = PsiMsDaq_StrWin_GetDataUnwrapped(winInfo, 5, 5, buf, sizeof(buf));
	if (PsiMsDaq_RetCode_Success != ret) printf("PsiMsDaq_StrWin_GetDataUnwrapped() failed: %d\n", ret);
	uint16_t* data = (uint16_t*)buf;
	printf("> Values:");
	for (int i = 0; i < 10; i++) {
		printf(" %d", data[i]);
		//Sample 5 is the trigger sample, mark it in the print
		if (i == 5) {
			printf("=T");
		}
	}
	printf("\n");

	//Mark window as free so new data can be recorded
	ret = PsiMsDaq_StrWin_MarkAsFree(winInfo);
	if (PsiMsDaq_RetCode_Success != ret) printf("PsiMsDaq_StrWin_MarkAsFree() failed: %d\n", ret);
	printf("\n");
}

//Stream 1 IRQ
void Str1Irq(PsiMsDaq_WinInfo_t winInfo, void* arg)
{
	//Print notification
	printf("\nRecieved Str1 IRQ: win %d\n", winInfo.winNr);
	PsiMsDaq_RetCode_t ret;

	//Make sue we really read from Memory and not from cache
	Xil_DCacheInvalidateRange(0x50000000, 32000*16);

	//Print timestamp
	uint64_t timestamp;
	PsiMsDaq_StrWin_GetTimestamp(winInfo, &timestamp);
	PsiMsDaq_StrWin_GetTimestamp(winInfo, &timestamp);
	printf("> Timestamp %016lx\n", timestamp);

	//Get data and print information
	const uint32_t POST_TRIG_CHECK = 1000;
	const uint32_t PRE_TRIG_CHECK = 1000;
	ret = PsiMsDaq_StrWin_GetDataUnwrapped(winInfo, PRE_TRIG_CHECK, POST_TRIG_CHECK, buf, sizeof(buf));
	if (PsiMsDaq_RetCode_Success != ret) printf("PsiMsDaq_StrWin_GetDataUnwrapped() failed: %d\n", ret);
	uint32_t* data = (uint32_t*)buf;
	printf("> Trigger Sample: %d\n", data[PRE_TRIG_CHECK]);
	printf("> First Sample  : %d\n", data[0]);
	printf("> Check if continuous ... ");
	uint32_t exp = data[0];
	bool failed = false;
	for (int i = 0; i < PRE_TRIG_CHECK+POST_TRIG_CHECK; i++) {
		if (exp != data[i]) {
			failed = true;
			printf("FAILED at %d\n", i);
			break;
		}
		exp = (exp+1) % 100000;	//Wraparound at 100k
	}
	if (!failed){
		printf("OK\n");
	}

	//Mark window as free so new data can be recorded
	ret = PsiMsDaq_StrWin_MarkAsFree(winInfo);
	if (PsiMsDaq_RetCode_Success != ret) printf("PsiMsDaq_StrWin_MarkAsFree() failed: %d\n", ret);
	printf("\n");
}

//*******************************************************************************
// Initialization
//*******************************************************************************
void Init()
{
	//Test data generator stream 0
	printf("Initialize DataGenerator 0\n");
	AxisDataGen_Init(str0Hndl, XPAR_STR0_TESTGEN_GEN_0_BASEADDR);
	AxisDataGen_Disable(str0Hndl);
	//Wraparound at 10000, generate triggers at X*1000
	AxisDataGen_ConfigurePattern(str0Hndl, 10000, 10, 1000, 999, true, true);
	AxisDataGen_Enable(str0Hndl);

	//Test data generator stream 1
	printf("Initialize DataGenerator 1\n");
	AxisDataGen_Init(str1Hndl, XPAR_STR1_TESTGEN_GEN_1_BASEADDR);
	AxisDataGen_Disable(str1Hndl);
	//Wraparound at 100000, generate triggers at X*25000+500
	AxisDataGen_ConfigurePattern(str1Hndl, 100000, 10, 500, 24999, true, true);
	AxisDataGen_Enable(str1Hndl);

	//Data Recorder
	printf("Initialize Data Recorder\n");
	PsiMsDaq_RetCode_t ret;
	daqHandle = PsiMsDaq_Init(XPAR_PSI_MS_DAQ_BASEADDR, 2, 16, NULL);
	ret = PsiMsDaq_GetStrHandle(daqHandle, 0, &daqStr0);
	if (PsiMsDaq_RetCode_Success != ret) printf("PsiMsDaq_GetStrHandle(0) failed: %d\n", ret);
	ret = PsiMsDaq_GetStrHandle(daqHandle, 1, &daqStr1);
	if (PsiMsDaq_RetCode_Success != ret) printf("PsiMsDaq_GetStrHandle(1) failed: %d\n", ret);

	//Stream 0 Configure
	printf("Initialize Stream 0\n");
	PsiMsDaq_StrConfig_t cfg0 = {
		.postTrigSamples = 5,
		.recMode = PsiMsDaqn_RecMode_Continuous,
		.winAsRingbuf = true,
		.winOverwrite = false,
		.winCnt = 3,
		.bufStartAddr = 0x40000000,
		.winSize = 32, //in bytes
		.streamWidthBits = 16
	};
	ret = PsiMsDaq_Str_Configure(daqStr0, &cfg0);
	if (PsiMsDaq_RetCode_Success != ret) printf("PsiMsDaq_Str_Configure(0) failed: %d\n", ret);
	ret = PsiMsDaq_Str_SetIrqCallbackWin(daqStr0, Str0Irq, NULL);
	if (PsiMsDaq_RetCode_Success != ret) printf("PsiMsDaq_Str_SetIrqCallbackWin(0) failed: %d\n", ret);
	ret = PsiMsDaq_Str_SetIrqEnable(daqStr0, true);
	if (PsiMsDaq_RetCode_Success != ret) printf("PsiMsDaq_Str_SetIrqEnable(0) failed: %d\n", ret);
	ret = PsiMsDaq_Str_SetEnable(daqStr0, true);
	if (PsiMsDaq_RetCode_Success != ret) printf("PsiMsDaq_Str_SetEnable(0) failed: %d\n", ret);

	//Stream 1 Configure
	printf("Initialize Stream 1\n");
	PsiMsDaq_StrConfig_t cfg1 = {
		.postTrigSamples = 1000,
		.recMode = PsiMsDaqn_RecMode_Continuous,
		.winAsRingbuf = true,
		.winOverwrite = false,
		.winCnt = 6,
		.bufStartAddr = 0x50000000,
		.winSize = 32000, //in bytes
		.streamWidthBits = 32
	};
	ret = PsiMsDaq_Str_Configure(daqStr1, &cfg1);
	if (PsiMsDaq_RetCode_Success != ret) printf("PsiMsDaq_Str_Configure(1) failed: %d\n", ret);
	ret = PsiMsDaq_Str_SetIrqCallbackWin(daqStr1, Str1Irq, NULL);
	if (PsiMsDaq_RetCode_Success != ret) printf("PsiMsDaq_Str_SetIrqCallbackWin(1) failed: %d\n", ret);
	ret = PsiMsDaq_Str_SetIrqEnable(daqStr1, true);
	if (PsiMsDaq_RetCode_Success != ret) printf("PsiMsDaq_Str_SetIrqEnable(1) failed: %d\n", ret);
	ret = PsiMsDaq_Str_SetEnable(daqStr1, true);
	if (PsiMsDaq_RetCode_Success != ret) printf("PsiMsDaq_Str_SetEnable(1) failed: %d\n", ret);

	//Interrupt Controller (last, since psi_ms_daq is used in IRQ handler)
	printf("Interrupt Controller\n");
	XScuGic_Config *IntcConfig;
	IntcConfig = XScuGic_LookupConfig(XPAR_SCUGIC_SINGLE_DEVICE_ID);
	XScuGic_CfgInitialize(&gicInst, IntcConfig, IntcConfig->CpuBaseAddress);
	XScuGic_Disable(&gicInst, XPAR_FABRIC_PSI_MS_DAQ_IRQ_INTR);
	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(	XIL_EXCEPTION_ID_INT,
									(Xil_ExceptionHandler) XScuGic_InterruptHandler,
									&gicInst);
	XScuGic_SetPriorityTriggerType(&gicInst, XPAR_FABRIC_PSI_MS_DAQ_IRQ_INTR, 0xA0, 0x1);	//0x1 = level sensitive IRQ, 0xA0 is default priority
	XScuGic_Connect(&gicInst, XPAR_FABRIC_PSI_MS_DAQ_IRQ_INTR, PsiMsDaqIrqHandler, (void*)daqHandle);
	XScuGic_Enable(&gicInst, XPAR_FABRIC_PSI_MS_DAQ_IRQ_INTR);
	Xil_ExceptionEnable();

	printf("Initialization done\n");
	usleep(100000);

}


//*******************************************************************************
// Main Loop
//*******************************************************************************
int main()
{
	//*** Initialization ***
	printf("*** Hello from psi_ms_daq RefDesign! ***\n");
	Init();

	//*** Menu ***
	printf("*** Entered Main Loop ***\n");
	bool running = true;
	while (running) {
		//Init
		bool str0Sel = false;
		bool str1Sel = false;
		//Get Action
		printf("Select Action:\n");
		printf("  0  Generate Triggers on Stream 0\n");
		printf("  1  Generate Triggers on Stream 1\n");
		printf("  b  Generate Triggers on both Streams\n");
		printf("  q  Quit\n");
		char c;
		do {
			c = getchar();
		} while ((c == '\n') || (c == '\r'));
		switch (c) {
		case '0':
			str0Sel = true;
			break;
		case '1':
			str1Sel = true;
			break;
		case 'b':
			str0Sel = true;
			str1Sel = true;
			break;
		case 'q':
			running = false;
			continue;
		default:
			printf("Illegal input %c!!!\n", c);
			continue;
		}
		//Get Trigger Count
		printf("Select trigger count (1-9)");
		do {
			c = getchar();
		} while ((c == '\n') || (c == '\r'));
		if ((c > '9') || (c < '0')) {
			printf("Illegal input %c!!!\n", c);
			continue;
		}
		const uint32_t triggers = c - '0';
		printf("\n");
		//Do triggers
		if (str0Sel) {
			AxisDataGen_SendSporadicTriggers(str0Hndl, triggers);
		}
		if (str1Sel) {
			AxisDataGen_SendSporadicTriggers(str1Hndl, triggers);
		}
		usleep(100000);

	}

	printf("Quitted!\n");
	Xil_ExceptionDisable();

	return 0;
}

										


