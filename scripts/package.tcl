##############################################################################
#  Copyright (c) 2019 by Paul Scherrer Institute, Switzerland
#  All rights reserved.
#  Authors: Oliver Bruendler
##############################################################################

###############################################################
# Include PSI packaging commands
###############################################################
source ../../../TCL/PsiIpPackage/PsiIpPackage.tcl
namespace import -force psi::ip_package::latest::*

###############################################################
# General Information
###############################################################
set IP_NAME psi_ms_daq_axi
set IP_VERSION 1.4
set IP_REVISION "auto"
set IP_LIBRARY PSI
set IP_DESCIRPTION "Mutli channel data recorder (to AXI memory)"

init $IP_NAME $IP_VERSION $IP_REVISION $IP_LIBRARY
set_description $IP_DESCIRPTION
set_logo_relative "../doc/psi_logo_150.gif"
set_datasheet_relative "../../../VHDL/psi_multi_stream_daq/doc/psi_multi_stream_daq.pdf"

###############################################################
# Add Source Files
###############################################################

#Relative Source Files
add_sources_relative { \
	../hdl/psi_ms_daq_vivado.vhd \
}

#Relative Library Files
add_lib_relative \
	"../../.."	\
	{ \
		VHDL/psi_common/hdl/psi_common_array_pkg.vhd \
		VHDL/psi_common/hdl/psi_common_math_pkg.vhd \
		VHDL/psi_common/hdl/psi_common_logic_pkg.vhd \
		VHDL/psi_common/hdl/psi_common_sdp_ram.vhd \
		VHDL/psi_common/hdl/psi_common_pulse_cc.vhd \
		VHDL/psi_common/hdl/psi_common_bit_cc.vhd \
		VHDL/psi_common/hdl/psi_common_simple_cc.vhd \
		VHDL/psi_common/hdl/psi_common_status_cc.vhd \
		VHDL/psi_common/hdl/psi_common_async_fifo.vhd \
		VHDL/psi_common/hdl/psi_common_arb_priority.vhd \
		VHDL/psi_common/hdl/psi_common_sync_fifo.vhd \
		VHDL/psi_common/hdl/psi_common_tdp_ram.vhd \
		VHDL/psi_common/hdl/psi_common_axi_master_simple.vhd \
		VHDL/psi_common/hdl/psi_common_wconv_n2xn.vhd \
		VHDL/psi_common/hdl/psi_common_axi_master_full.vhd \
		VHDL/psi_common/hdl/psi_common_pl_stage.vhd \
		VHDL/psi_common/hdl/psi_common_axi_slave_ipif.vhd \
		VHDL/psi_multi_stream_daq/hdl/psi_ms_daq_pkg.vhd \
		VHDL/psi_multi_stream_daq/hdl/psi_ms_daq_input.vhd \
		VHDL/psi_multi_stream_daq/hdl/psi_ms_daq_daq_sm.vhd \
		VHDL/psi_multi_stream_daq/hdl/psi_ms_daq_daq_dma.vhd \
		VHDL/psi_multi_stream_daq/hdl/psi_ms_daq_axi_if.vhd \
		VHDL/psi_multi_stream_daq/hdl/psi_ms_daq_reg_axi.vhd \
		VHDL/psi_multi_stream_daq/hdl/psi_ms_daq_axi.vhd \
	}		

###############################################################
# Driver Files
###############################################################	

#WARNING! Driver files are stored with the VHDL code. If they are modified,
#... the modifications need to be made there. The local files are overwritten
#... automatically during packaging.

#Copy files
file copy -force ../../../VHDL/psi_multi_stream_daq/driver/psi_ms_daq.c ../drivers/psi_ms_daq_axi/src/psi_ms_daq.c
file copy -force ../../../VHDL/psi_multi_stream_daq/driver/psi_ms_daq.h ../drivers/psi_ms_daq_axi/src/psi_ms_daq.h

#Package
add_drivers_relative ../drivers/psi_ms_daq_axi { \
	src/psi_ms_daq.c \
	src/psi_ms_daq.h \
}	

###############################################################
# GUI Parameters
###############################################################

#General Configuration
gui_add_page "General Configuration"

gui_create_parameter "Streams_g" "Number of Streams"
gui_parameter_set_range 1 16
gui_add_parameter

gui_create_parameter "TsPerStream_g" "Use separate Timestamp per stream"
gui_parameter_set_widget_checkbox
gui_add_parameter	

gui_create_parameter "MaxWindows_g" "Maximum number of Windows per Stream"
gui_parameter_set_range 1 32
gui_add_parameter

gui_create_parameter "MinBurstSize_g" "Minimum burst size to memory \[64-bit words\]"
gui_parameter_set_range 1 512
gui_add_parameter

gui_create_parameter "MaxBurstSize_g" "Maximum burst size to memory \[64-bit words\]"
gui_parameter_set_range 1 512
gui_add_parameter

#AXI Master
gui_add_page "AXI Master"

gui_create_parameter "AxiDataWidth_g" "AXI Master Data Width"
gui_parameter_set_widget_dropdown {64 128 256 512 1024}
gui_add_parameter

gui_create_parameter "AxiMaxBurstBeats_g" "Maximum AXI burst size (16 for AXI-3, 256 for AXI-4)"
gui_parameter_set_range 1 256
gui_add_parameter

gui_create_parameter "AxiMaxOpenTrasactions_g" "Maximum open AXI transactions"
gui_parameter_set_range 1 8
gui_add_parameter

gui_create_parameter "AxiFifoDepth_g" "AXI Buffer Depth \[AXI words\]"
gui_add_parameter

#Streams
for {set i 0} {$i < 16} {incr i} {
	gui_add_page "Stream $i"
	
	gui_create_parameter "Stream$i\Width_g" "Data Width"
	gui_parameter_set_widget_dropdown {8 16 32 64 128 256 512}
	gui_add_parameter	
	
	gui_create_parameter "Stream$i\Prio_g" "Priority"
	gui_parameter_set_widget_dropdown {1 2 3}
	gui_add_parameter

	gui_create_parameter "Stream$i\Buffer_g" "Buffer \[in input words\]"
	gui_add_parameter		

	gui_create_parameter "Stream$i\TimeoutUs_g" "Timeout \[us\]"
	gui_add_parameter		
	
	gui_create_parameter "Stream$i\ClkFreqHz_g" "Clock Frequency \[Hz\]"
	gui_add_parameter		
	
	gui_create_parameter "Stream$i\TsFifoDepth_g" "Timestamp FIFO depth"
	gui_add_parameter		
	
	gui_create_parameter "Stream$i\UseTs_g" "Use Timestamp"
	gui_parameter_set_widget_checkbox
	gui_add_parameter		
}


###############################################################
# Optional Ports
###############################################################

for {set i 0} {$i < 16} {incr i} {
	set i02 [format "%02d" $i]
	add_port_enablement_condition "Str$i02\_TData" "\$Streams_g > $i"
	add_port_enablement_condition "Str$i02\_Ts" "(\$Streams_g > $i) && \$Stream$i\UseTs_g && \$TsPerStream_g"
	add_port_enablement_condition "Str$i02\_TValid" "\$Streams_g > $i"
	add_port_enablement_condition "Str$i02\_TReady" "\$Streams_g > $i"
	add_port_enablement_condition "Str$i02\_Clk" "\$Streams_g > $i"
	add_interface_enablement_condition "Str$i02" "\$Streams_g > $i"
}
add_port_enablement_condition "StrX_Ts" "!\$TsPerStream_g"

###############################################################
# Package Core
###############################################################
set TargetDir ".."
#											Edit  Synth	Part
package_ip $TargetDir 						false  true	xczu9eg-ffvb1156-2-e




