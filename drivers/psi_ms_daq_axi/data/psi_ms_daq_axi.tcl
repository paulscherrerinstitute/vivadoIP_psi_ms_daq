

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" psi_ms_daq_axi "NUM_INSTANCES" "DEVICE_ID"  "C_BASEADDR" "C_HIGHADDR"
}
