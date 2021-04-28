# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set General_Configuration [ipgui::add_page $IPINST -name "General Configuration"]
  ipgui::add_param $IPINST -name "Streams_g" -parent ${General_Configuration}
  ipgui::add_param $IPINST -name "TsPerStream_g" -parent ${General_Configuration}
  ipgui::add_param $IPINST -name "MaxWindows_g" -parent ${General_Configuration}
  ipgui::add_param $IPINST -name "MinBurstSize_g" -parent ${General_Configuration}
  ipgui::add_param $IPINST -name "MaxBurstSize_g" -parent ${General_Configuration}

  #Adding Page
  set AXI_Master [ipgui::add_page $IPINST -name "AXI Master"]
  ipgui::add_param $IPINST -name "AxiDataWidth_g" -parent ${AXI_Master} -widget comboBox
  ipgui::add_param $IPINST -name "AxiMaxBurstBeats_g" -parent ${AXI_Master}
  ipgui::add_param $IPINST -name "AxiMaxOpenTrasactions_g" -parent ${AXI_Master}
  ipgui::add_param $IPINST -name "AxiFifoDepth_g" -parent ${AXI_Master}

  #Adding Page
  set Stream_0 [ipgui::add_page $IPINST -name "Stream 0"]
  ipgui::add_param $IPINST -name "Stream0Width_g" -parent ${Stream_0} -widget comboBox
  ipgui::add_param $IPINST -name "Stream0Prio_g" -parent ${Stream_0} -widget comboBox
  ipgui::add_param $IPINST -name "Stream0Buffer_g" -parent ${Stream_0}
  ipgui::add_param $IPINST -name "Stream0TimeoutUs_g" -parent ${Stream_0}
  ipgui::add_param $IPINST -name "Stream0ClkFreqHz_g" -parent ${Stream_0}
  ipgui::add_param $IPINST -name "Stream0TsFifoDepth_g" -parent ${Stream_0}
  ipgui::add_param $IPINST -name "Stream0UseTs_g" -parent ${Stream_0}

  #Adding Page
  set Stream_1 [ipgui::add_page $IPINST -name "Stream 1"]
  ipgui::add_param $IPINST -name "Stream1Width_g" -parent ${Stream_1} -widget comboBox
  ipgui::add_param $IPINST -name "Stream1Prio_g" -parent ${Stream_1} -widget comboBox
  ipgui::add_param $IPINST -name "Stream1Buffer_g" -parent ${Stream_1}
  ipgui::add_param $IPINST -name "Stream1TimeoutUs_g" -parent ${Stream_1}
  ipgui::add_param $IPINST -name "Stream1ClkFreqHz_g" -parent ${Stream_1}
  ipgui::add_param $IPINST -name "Stream1TsFifoDepth_g" -parent ${Stream_1}
  ipgui::add_param $IPINST -name "Stream1UseTs_g" -parent ${Stream_1}

  #Adding Page
  set Stream_2 [ipgui::add_page $IPINST -name "Stream 2"]
  ipgui::add_param $IPINST -name "Stream2Width_g" -parent ${Stream_2} -widget comboBox
  ipgui::add_param $IPINST -name "Stream2Prio_g" -parent ${Stream_2} -widget comboBox
  ipgui::add_param $IPINST -name "Stream2Buffer_g" -parent ${Stream_2}
  ipgui::add_param $IPINST -name "Stream2TimeoutUs_g" -parent ${Stream_2}
  ipgui::add_param $IPINST -name "Stream2ClkFreqHz_g" -parent ${Stream_2}
  ipgui::add_param $IPINST -name "Stream2TsFifoDepth_g" -parent ${Stream_2}
  ipgui::add_param $IPINST -name "Stream2UseTs_g" -parent ${Stream_2}

  #Adding Page
  set Stream_3 [ipgui::add_page $IPINST -name "Stream 3"]
  ipgui::add_param $IPINST -name "Stream3Width_g" -parent ${Stream_3} -widget comboBox
  ipgui::add_param $IPINST -name "Stream3Prio_g" -parent ${Stream_3} -widget comboBox
  ipgui::add_param $IPINST -name "Stream3Buffer_g" -parent ${Stream_3}
  ipgui::add_param $IPINST -name "Stream3TimeoutUs_g" -parent ${Stream_3}
  ipgui::add_param $IPINST -name "Stream3ClkFreqHz_g" -parent ${Stream_3}
  ipgui::add_param $IPINST -name "Stream3TsFifoDepth_g" -parent ${Stream_3}
  ipgui::add_param $IPINST -name "Stream3UseTs_g" -parent ${Stream_3}

  #Adding Page
  set Stream_4 [ipgui::add_page $IPINST -name "Stream 4"]
  ipgui::add_param $IPINST -name "Stream4Width_g" -parent ${Stream_4} -widget comboBox
  ipgui::add_param $IPINST -name "Stream4Prio_g" -parent ${Stream_4} -widget comboBox
  ipgui::add_param $IPINST -name "Stream4Buffer_g" -parent ${Stream_4}
  ipgui::add_param $IPINST -name "Stream4TimeoutUs_g" -parent ${Stream_4}
  ipgui::add_param $IPINST -name "Stream4ClkFreqHz_g" -parent ${Stream_4}
  ipgui::add_param $IPINST -name "Stream4TsFifoDepth_g" -parent ${Stream_4}
  ipgui::add_param $IPINST -name "Stream4UseTs_g" -parent ${Stream_4}

  #Adding Page
  set Stream_5 [ipgui::add_page $IPINST -name "Stream 5"]
  ipgui::add_param $IPINST -name "Stream5Width_g" -parent ${Stream_5} -widget comboBox
  ipgui::add_param $IPINST -name "Stream5Prio_g" -parent ${Stream_5} -widget comboBox
  ipgui::add_param $IPINST -name "Stream5Buffer_g" -parent ${Stream_5}
  ipgui::add_param $IPINST -name "Stream5TimeoutUs_g" -parent ${Stream_5}
  ipgui::add_param $IPINST -name "Stream5ClkFreqHz_g" -parent ${Stream_5}
  ipgui::add_param $IPINST -name "Stream5TsFifoDepth_g" -parent ${Stream_5}
  ipgui::add_param $IPINST -name "Stream5UseTs_g" -parent ${Stream_5}

  #Adding Page
  set Stream_6 [ipgui::add_page $IPINST -name "Stream 6"]
  ipgui::add_param $IPINST -name "Stream6Width_g" -parent ${Stream_6} -widget comboBox
  ipgui::add_param $IPINST -name "Stream6Prio_g" -parent ${Stream_6} -widget comboBox
  ipgui::add_param $IPINST -name "Stream6Buffer_g" -parent ${Stream_6}
  ipgui::add_param $IPINST -name "Stream6TimeoutUs_g" -parent ${Stream_6}
  ipgui::add_param $IPINST -name "Stream6ClkFreqHz_g" -parent ${Stream_6}
  ipgui::add_param $IPINST -name "Stream6TsFifoDepth_g" -parent ${Stream_6}
  ipgui::add_param $IPINST -name "Stream6UseTs_g" -parent ${Stream_6}

  #Adding Page
  set Stream_7 [ipgui::add_page $IPINST -name "Stream 7"]
  ipgui::add_param $IPINST -name "Stream7Width_g" -parent ${Stream_7} -widget comboBox
  ipgui::add_param $IPINST -name "Stream7Prio_g" -parent ${Stream_7} -widget comboBox
  ipgui::add_param $IPINST -name "Stream7Buffer_g" -parent ${Stream_7}
  ipgui::add_param $IPINST -name "Stream7TimeoutUs_g" -parent ${Stream_7}
  ipgui::add_param $IPINST -name "Stream7ClkFreqHz_g" -parent ${Stream_7}
  ipgui::add_param $IPINST -name "Stream7TsFifoDepth_g" -parent ${Stream_7}
  ipgui::add_param $IPINST -name "Stream7UseTs_g" -parent ${Stream_7}

  #Adding Page
  set Stream_8 [ipgui::add_page $IPINST -name "Stream 8"]
  ipgui::add_param $IPINST -name "Stream8Width_g" -parent ${Stream_8} -widget comboBox
  ipgui::add_param $IPINST -name "Stream8Prio_g" -parent ${Stream_8} -widget comboBox
  ipgui::add_param $IPINST -name "Stream8Buffer_g" -parent ${Stream_8}
  ipgui::add_param $IPINST -name "Stream8TimeoutUs_g" -parent ${Stream_8}
  ipgui::add_param $IPINST -name "Stream8ClkFreqHz_g" -parent ${Stream_8}
  ipgui::add_param $IPINST -name "Stream8TsFifoDepth_g" -parent ${Stream_8}
  ipgui::add_param $IPINST -name "Stream8UseTs_g" -parent ${Stream_8}

  #Adding Page
  set Stream_9 [ipgui::add_page $IPINST -name "Stream 9"]
  ipgui::add_param $IPINST -name "Stream9Width_g" -parent ${Stream_9} -widget comboBox
  ipgui::add_param $IPINST -name "Stream9Prio_g" -parent ${Stream_9} -widget comboBox
  ipgui::add_param $IPINST -name "Stream9Buffer_g" -parent ${Stream_9}
  ipgui::add_param $IPINST -name "Stream9TimeoutUs_g" -parent ${Stream_9}
  ipgui::add_param $IPINST -name "Stream9ClkFreqHz_g" -parent ${Stream_9}
  ipgui::add_param $IPINST -name "Stream9TsFifoDepth_g" -parent ${Stream_9}
  ipgui::add_param $IPINST -name "Stream9UseTs_g" -parent ${Stream_9}

  #Adding Page
  set Stream_10 [ipgui::add_page $IPINST -name "Stream 10"]
  ipgui::add_param $IPINST -name "Stream10Width_g" -parent ${Stream_10} -widget comboBox
  ipgui::add_param $IPINST -name "Stream10Prio_g" -parent ${Stream_10} -widget comboBox
  ipgui::add_param $IPINST -name "Stream10Buffer_g" -parent ${Stream_10}
  ipgui::add_param $IPINST -name "Stream10TimeoutUs_g" -parent ${Stream_10}
  ipgui::add_param $IPINST -name "Stream10ClkFreqHz_g" -parent ${Stream_10}
  ipgui::add_param $IPINST -name "Stream10TsFifoDepth_g" -parent ${Stream_10}
  ipgui::add_param $IPINST -name "Stream10UseTs_g" -parent ${Stream_10}

  #Adding Page
  set Stream_11 [ipgui::add_page $IPINST -name "Stream 11"]
  ipgui::add_param $IPINST -name "Stream11Width_g" -parent ${Stream_11} -widget comboBox
  ipgui::add_param $IPINST -name "Stream11Prio_g" -parent ${Stream_11} -widget comboBox
  ipgui::add_param $IPINST -name "Stream11Buffer_g" -parent ${Stream_11}
  ipgui::add_param $IPINST -name "Stream11TimeoutUs_g" -parent ${Stream_11}
  ipgui::add_param $IPINST -name "Stream11ClkFreqHz_g" -parent ${Stream_11}
  ipgui::add_param $IPINST -name "Stream11TsFifoDepth_g" -parent ${Stream_11}
  ipgui::add_param $IPINST -name "Stream11UseTs_g" -parent ${Stream_11}

  #Adding Page
  set Stream_12 [ipgui::add_page $IPINST -name "Stream 12"]
  ipgui::add_param $IPINST -name "Stream12Width_g" -parent ${Stream_12} -widget comboBox
  ipgui::add_param $IPINST -name "Stream12Prio_g" -parent ${Stream_12} -widget comboBox
  ipgui::add_param $IPINST -name "Stream12Buffer_g" -parent ${Stream_12}
  ipgui::add_param $IPINST -name "Stream12TimeoutUs_g" -parent ${Stream_12}
  ipgui::add_param $IPINST -name "Stream12ClkFreqHz_g" -parent ${Stream_12}
  ipgui::add_param $IPINST -name "Stream12TsFifoDepth_g" -parent ${Stream_12}
  ipgui::add_param $IPINST -name "Stream12UseTs_g" -parent ${Stream_12}

  #Adding Page
  set Stream_13 [ipgui::add_page $IPINST -name "Stream 13"]
  ipgui::add_param $IPINST -name "Stream13Width_g" -parent ${Stream_13} -widget comboBox
  ipgui::add_param $IPINST -name "Stream13Prio_g" -parent ${Stream_13} -widget comboBox
  ipgui::add_param $IPINST -name "Stream13Buffer_g" -parent ${Stream_13}
  ipgui::add_param $IPINST -name "Stream13TimeoutUs_g" -parent ${Stream_13}
  ipgui::add_param $IPINST -name "Stream13ClkFreqHz_g" -parent ${Stream_13}
  ipgui::add_param $IPINST -name "Stream13TsFifoDepth_g" -parent ${Stream_13}
  ipgui::add_param $IPINST -name "Stream13UseTs_g" -parent ${Stream_13}

  #Adding Page
  set Stream_14 [ipgui::add_page $IPINST -name "Stream 14"]
  ipgui::add_param $IPINST -name "Stream14Width_g" -parent ${Stream_14} -widget comboBox
  ipgui::add_param $IPINST -name "Stream14Prio_g" -parent ${Stream_14} -widget comboBox
  ipgui::add_param $IPINST -name "Stream14Buffer_g" -parent ${Stream_14}
  ipgui::add_param $IPINST -name "Stream14TimeoutUs_g" -parent ${Stream_14}
  ipgui::add_param $IPINST -name "Stream14ClkFreqHz_g" -parent ${Stream_14}
  ipgui::add_param $IPINST -name "Stream14TsFifoDepth_g" -parent ${Stream_14}
  ipgui::add_param $IPINST -name "Stream14UseTs_g" -parent ${Stream_14}

  #Adding Page
  set Stream_15 [ipgui::add_page $IPINST -name "Stream 15"]
  ipgui::add_param $IPINST -name "Stream15Width_g" -parent ${Stream_15} -widget comboBox
  ipgui::add_param $IPINST -name "Stream15Prio_g" -parent ${Stream_15} -widget comboBox
  ipgui::add_param $IPINST -name "Stream15Buffer_g" -parent ${Stream_15}
  ipgui::add_param $IPINST -name "Stream15TimeoutUs_g" -parent ${Stream_15}
  ipgui::add_param $IPINST -name "Stream15ClkFreqHz_g" -parent ${Stream_15}
  ipgui::add_param $IPINST -name "Stream15TsFifoDepth_g" -parent ${Stream_15}
  ipgui::add_param $IPINST -name "Stream15UseTs_g" -parent ${Stream_15}


}

proc update_PARAM_VALUE.AxiDataWidth_g { PARAM_VALUE.AxiDataWidth_g } {
	# Procedure called to update AxiDataWidth_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AxiDataWidth_g { PARAM_VALUE.AxiDataWidth_g } {
	# Procedure called to validate AxiDataWidth_g
	return true
}

proc update_PARAM_VALUE.AxiFifoDepth_g { PARAM_VALUE.AxiFifoDepth_g } {
	# Procedure called to update AxiFifoDepth_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AxiFifoDepth_g { PARAM_VALUE.AxiFifoDepth_g } {
	# Procedure called to validate AxiFifoDepth_g
	return true
}

proc update_PARAM_VALUE.AxiMaxBurstBeats_g { PARAM_VALUE.AxiMaxBurstBeats_g } {
	# Procedure called to update AxiMaxBurstBeats_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AxiMaxBurstBeats_g { PARAM_VALUE.AxiMaxBurstBeats_g } {
	# Procedure called to validate AxiMaxBurstBeats_g
	return true
}

proc update_PARAM_VALUE.AxiMaxOpenTrasactions_g { PARAM_VALUE.AxiMaxOpenTrasactions_g } {
	# Procedure called to update AxiMaxOpenTrasactions_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AxiMaxOpenTrasactions_g { PARAM_VALUE.AxiMaxOpenTrasactions_g } {
	# Procedure called to validate AxiMaxOpenTrasactions_g
	return true
}

proc update_PARAM_VALUE.C_S_Axi_ID_WIDTH { PARAM_VALUE.C_S_Axi_ID_WIDTH } {
	# Procedure called to update C_S_Axi_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_Axi_ID_WIDTH { PARAM_VALUE.C_S_Axi_ID_WIDTH } {
	# Procedure called to validate C_S_Axi_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.MaxBurstSize_g { PARAM_VALUE.MaxBurstSize_g } {
	# Procedure called to update MaxBurstSize_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MaxBurstSize_g { PARAM_VALUE.MaxBurstSize_g } {
	# Procedure called to validate MaxBurstSize_g
	return true
}

proc update_PARAM_VALUE.MaxWindows_g { PARAM_VALUE.MaxWindows_g } {
	# Procedure called to update MaxWindows_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MaxWindows_g { PARAM_VALUE.MaxWindows_g } {
	# Procedure called to validate MaxWindows_g
	return true
}

proc update_PARAM_VALUE.MinBurstSize_g { PARAM_VALUE.MinBurstSize_g } {
	# Procedure called to update MinBurstSize_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MinBurstSize_g { PARAM_VALUE.MinBurstSize_g } {
	# Procedure called to validate MinBurstSize_g
	return true
}

proc update_PARAM_VALUE.Stream0Buffer_g { PARAM_VALUE.Stream0Buffer_g } {
	# Procedure called to update Stream0Buffer_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream0Buffer_g { PARAM_VALUE.Stream0Buffer_g } {
	# Procedure called to validate Stream0Buffer_g
	return true
}

proc update_PARAM_VALUE.Stream0ClkFreqHz_g { PARAM_VALUE.Stream0ClkFreqHz_g } {
	# Procedure called to update Stream0ClkFreqHz_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream0ClkFreqHz_g { PARAM_VALUE.Stream0ClkFreqHz_g } {
	# Procedure called to validate Stream0ClkFreqHz_g
	return true
}

proc update_PARAM_VALUE.Stream0Prio_g { PARAM_VALUE.Stream0Prio_g } {
	# Procedure called to update Stream0Prio_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream0Prio_g { PARAM_VALUE.Stream0Prio_g } {
	# Procedure called to validate Stream0Prio_g
	return true
}

proc update_PARAM_VALUE.Stream0TimeoutUs_g { PARAM_VALUE.Stream0TimeoutUs_g } {
	# Procedure called to update Stream0TimeoutUs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream0TimeoutUs_g { PARAM_VALUE.Stream0TimeoutUs_g } {
	# Procedure called to validate Stream0TimeoutUs_g
	return true
}

proc update_PARAM_VALUE.Stream0TsFifoDepth_g { PARAM_VALUE.Stream0TsFifoDepth_g } {
	# Procedure called to update Stream0TsFifoDepth_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream0TsFifoDepth_g { PARAM_VALUE.Stream0TsFifoDepth_g } {
	# Procedure called to validate Stream0TsFifoDepth_g
	return true
}

proc update_PARAM_VALUE.Stream0UseTs_g { PARAM_VALUE.Stream0UseTs_g } {
	# Procedure called to update Stream0UseTs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream0UseTs_g { PARAM_VALUE.Stream0UseTs_g } {
	# Procedure called to validate Stream0UseTs_g
	return true
}

proc update_PARAM_VALUE.Stream0Width_g { PARAM_VALUE.Stream0Width_g } {
	# Procedure called to update Stream0Width_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream0Width_g { PARAM_VALUE.Stream0Width_g } {
	# Procedure called to validate Stream0Width_g
	return true
}

proc update_PARAM_VALUE.Stream10Buffer_g { PARAM_VALUE.Stream10Buffer_g } {
	# Procedure called to update Stream10Buffer_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream10Buffer_g { PARAM_VALUE.Stream10Buffer_g } {
	# Procedure called to validate Stream10Buffer_g
	return true
}

proc update_PARAM_VALUE.Stream10ClkFreqHz_g { PARAM_VALUE.Stream10ClkFreqHz_g } {
	# Procedure called to update Stream10ClkFreqHz_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream10ClkFreqHz_g { PARAM_VALUE.Stream10ClkFreqHz_g } {
	# Procedure called to validate Stream10ClkFreqHz_g
	return true
}

proc update_PARAM_VALUE.Stream10Prio_g { PARAM_VALUE.Stream10Prio_g } {
	# Procedure called to update Stream10Prio_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream10Prio_g { PARAM_VALUE.Stream10Prio_g } {
	# Procedure called to validate Stream10Prio_g
	return true
}

proc update_PARAM_VALUE.Stream10TimeoutUs_g { PARAM_VALUE.Stream10TimeoutUs_g } {
	# Procedure called to update Stream10TimeoutUs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream10TimeoutUs_g { PARAM_VALUE.Stream10TimeoutUs_g } {
	# Procedure called to validate Stream10TimeoutUs_g
	return true
}

proc update_PARAM_VALUE.Stream10TsFifoDepth_g { PARAM_VALUE.Stream10TsFifoDepth_g } {
	# Procedure called to update Stream10TsFifoDepth_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream10TsFifoDepth_g { PARAM_VALUE.Stream10TsFifoDepth_g } {
	# Procedure called to validate Stream10TsFifoDepth_g
	return true
}

proc update_PARAM_VALUE.Stream10UseTs_g { PARAM_VALUE.Stream10UseTs_g } {
	# Procedure called to update Stream10UseTs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream10UseTs_g { PARAM_VALUE.Stream10UseTs_g } {
	# Procedure called to validate Stream10UseTs_g
	return true
}

proc update_PARAM_VALUE.Stream10Width_g { PARAM_VALUE.Stream10Width_g } {
	# Procedure called to update Stream10Width_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream10Width_g { PARAM_VALUE.Stream10Width_g } {
	# Procedure called to validate Stream10Width_g
	return true
}

proc update_PARAM_VALUE.Stream11Buffer_g { PARAM_VALUE.Stream11Buffer_g } {
	# Procedure called to update Stream11Buffer_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream11Buffer_g { PARAM_VALUE.Stream11Buffer_g } {
	# Procedure called to validate Stream11Buffer_g
	return true
}

proc update_PARAM_VALUE.Stream11ClkFreqHz_g { PARAM_VALUE.Stream11ClkFreqHz_g } {
	# Procedure called to update Stream11ClkFreqHz_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream11ClkFreqHz_g { PARAM_VALUE.Stream11ClkFreqHz_g } {
	# Procedure called to validate Stream11ClkFreqHz_g
	return true
}

proc update_PARAM_VALUE.Stream11Prio_g { PARAM_VALUE.Stream11Prio_g } {
	# Procedure called to update Stream11Prio_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream11Prio_g { PARAM_VALUE.Stream11Prio_g } {
	# Procedure called to validate Stream11Prio_g
	return true
}

proc update_PARAM_VALUE.Stream11TimeoutUs_g { PARAM_VALUE.Stream11TimeoutUs_g } {
	# Procedure called to update Stream11TimeoutUs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream11TimeoutUs_g { PARAM_VALUE.Stream11TimeoutUs_g } {
	# Procedure called to validate Stream11TimeoutUs_g
	return true
}

proc update_PARAM_VALUE.Stream11TsFifoDepth_g { PARAM_VALUE.Stream11TsFifoDepth_g } {
	# Procedure called to update Stream11TsFifoDepth_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream11TsFifoDepth_g { PARAM_VALUE.Stream11TsFifoDepth_g } {
	# Procedure called to validate Stream11TsFifoDepth_g
	return true
}

proc update_PARAM_VALUE.Stream11UseTs_g { PARAM_VALUE.Stream11UseTs_g } {
	# Procedure called to update Stream11UseTs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream11UseTs_g { PARAM_VALUE.Stream11UseTs_g } {
	# Procedure called to validate Stream11UseTs_g
	return true
}

proc update_PARAM_VALUE.Stream11Width_g { PARAM_VALUE.Stream11Width_g } {
	# Procedure called to update Stream11Width_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream11Width_g { PARAM_VALUE.Stream11Width_g } {
	# Procedure called to validate Stream11Width_g
	return true
}

proc update_PARAM_VALUE.Stream12Buffer_g { PARAM_VALUE.Stream12Buffer_g } {
	# Procedure called to update Stream12Buffer_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream12Buffer_g { PARAM_VALUE.Stream12Buffer_g } {
	# Procedure called to validate Stream12Buffer_g
	return true
}

proc update_PARAM_VALUE.Stream12ClkFreqHz_g { PARAM_VALUE.Stream12ClkFreqHz_g } {
	# Procedure called to update Stream12ClkFreqHz_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream12ClkFreqHz_g { PARAM_VALUE.Stream12ClkFreqHz_g } {
	# Procedure called to validate Stream12ClkFreqHz_g
	return true
}

proc update_PARAM_VALUE.Stream12Prio_g { PARAM_VALUE.Stream12Prio_g } {
	# Procedure called to update Stream12Prio_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream12Prio_g { PARAM_VALUE.Stream12Prio_g } {
	# Procedure called to validate Stream12Prio_g
	return true
}

proc update_PARAM_VALUE.Stream12TimeoutUs_g { PARAM_VALUE.Stream12TimeoutUs_g } {
	# Procedure called to update Stream12TimeoutUs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream12TimeoutUs_g { PARAM_VALUE.Stream12TimeoutUs_g } {
	# Procedure called to validate Stream12TimeoutUs_g
	return true
}

proc update_PARAM_VALUE.Stream12TsFifoDepth_g { PARAM_VALUE.Stream12TsFifoDepth_g } {
	# Procedure called to update Stream12TsFifoDepth_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream12TsFifoDepth_g { PARAM_VALUE.Stream12TsFifoDepth_g } {
	# Procedure called to validate Stream12TsFifoDepth_g
	return true
}

proc update_PARAM_VALUE.Stream12UseTs_g { PARAM_VALUE.Stream12UseTs_g } {
	# Procedure called to update Stream12UseTs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream12UseTs_g { PARAM_VALUE.Stream12UseTs_g } {
	# Procedure called to validate Stream12UseTs_g
	return true
}

proc update_PARAM_VALUE.Stream12Width_g { PARAM_VALUE.Stream12Width_g } {
	# Procedure called to update Stream12Width_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream12Width_g { PARAM_VALUE.Stream12Width_g } {
	# Procedure called to validate Stream12Width_g
	return true
}

proc update_PARAM_VALUE.Stream13Buffer_g { PARAM_VALUE.Stream13Buffer_g } {
	# Procedure called to update Stream13Buffer_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream13Buffer_g { PARAM_VALUE.Stream13Buffer_g } {
	# Procedure called to validate Stream13Buffer_g
	return true
}

proc update_PARAM_VALUE.Stream13ClkFreqHz_g { PARAM_VALUE.Stream13ClkFreqHz_g } {
	# Procedure called to update Stream13ClkFreqHz_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream13ClkFreqHz_g { PARAM_VALUE.Stream13ClkFreqHz_g } {
	# Procedure called to validate Stream13ClkFreqHz_g
	return true
}

proc update_PARAM_VALUE.Stream13Prio_g { PARAM_VALUE.Stream13Prio_g } {
	# Procedure called to update Stream13Prio_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream13Prio_g { PARAM_VALUE.Stream13Prio_g } {
	# Procedure called to validate Stream13Prio_g
	return true
}

proc update_PARAM_VALUE.Stream13TimeoutUs_g { PARAM_VALUE.Stream13TimeoutUs_g } {
	# Procedure called to update Stream13TimeoutUs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream13TimeoutUs_g { PARAM_VALUE.Stream13TimeoutUs_g } {
	# Procedure called to validate Stream13TimeoutUs_g
	return true
}

proc update_PARAM_VALUE.Stream13TsFifoDepth_g { PARAM_VALUE.Stream13TsFifoDepth_g } {
	# Procedure called to update Stream13TsFifoDepth_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream13TsFifoDepth_g { PARAM_VALUE.Stream13TsFifoDepth_g } {
	# Procedure called to validate Stream13TsFifoDepth_g
	return true
}

proc update_PARAM_VALUE.Stream13UseTs_g { PARAM_VALUE.Stream13UseTs_g } {
	# Procedure called to update Stream13UseTs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream13UseTs_g { PARAM_VALUE.Stream13UseTs_g } {
	# Procedure called to validate Stream13UseTs_g
	return true
}

proc update_PARAM_VALUE.Stream13Width_g { PARAM_VALUE.Stream13Width_g } {
	# Procedure called to update Stream13Width_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream13Width_g { PARAM_VALUE.Stream13Width_g } {
	# Procedure called to validate Stream13Width_g
	return true
}

proc update_PARAM_VALUE.Stream14Buffer_g { PARAM_VALUE.Stream14Buffer_g } {
	# Procedure called to update Stream14Buffer_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream14Buffer_g { PARAM_VALUE.Stream14Buffer_g } {
	# Procedure called to validate Stream14Buffer_g
	return true
}

proc update_PARAM_VALUE.Stream14ClkFreqHz_g { PARAM_VALUE.Stream14ClkFreqHz_g } {
	# Procedure called to update Stream14ClkFreqHz_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream14ClkFreqHz_g { PARAM_VALUE.Stream14ClkFreqHz_g } {
	# Procedure called to validate Stream14ClkFreqHz_g
	return true
}

proc update_PARAM_VALUE.Stream14Prio_g { PARAM_VALUE.Stream14Prio_g } {
	# Procedure called to update Stream14Prio_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream14Prio_g { PARAM_VALUE.Stream14Prio_g } {
	# Procedure called to validate Stream14Prio_g
	return true
}

proc update_PARAM_VALUE.Stream14TimeoutUs_g { PARAM_VALUE.Stream14TimeoutUs_g } {
	# Procedure called to update Stream14TimeoutUs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream14TimeoutUs_g { PARAM_VALUE.Stream14TimeoutUs_g } {
	# Procedure called to validate Stream14TimeoutUs_g
	return true
}

proc update_PARAM_VALUE.Stream14TsFifoDepth_g { PARAM_VALUE.Stream14TsFifoDepth_g } {
	# Procedure called to update Stream14TsFifoDepth_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream14TsFifoDepth_g { PARAM_VALUE.Stream14TsFifoDepth_g } {
	# Procedure called to validate Stream14TsFifoDepth_g
	return true
}

proc update_PARAM_VALUE.Stream14UseTs_g { PARAM_VALUE.Stream14UseTs_g } {
	# Procedure called to update Stream14UseTs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream14UseTs_g { PARAM_VALUE.Stream14UseTs_g } {
	# Procedure called to validate Stream14UseTs_g
	return true
}

proc update_PARAM_VALUE.Stream14Width_g { PARAM_VALUE.Stream14Width_g } {
	# Procedure called to update Stream14Width_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream14Width_g { PARAM_VALUE.Stream14Width_g } {
	# Procedure called to validate Stream14Width_g
	return true
}

proc update_PARAM_VALUE.Stream15Buffer_g { PARAM_VALUE.Stream15Buffer_g } {
	# Procedure called to update Stream15Buffer_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream15Buffer_g { PARAM_VALUE.Stream15Buffer_g } {
	# Procedure called to validate Stream15Buffer_g
	return true
}

proc update_PARAM_VALUE.Stream15ClkFreqHz_g { PARAM_VALUE.Stream15ClkFreqHz_g } {
	# Procedure called to update Stream15ClkFreqHz_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream15ClkFreqHz_g { PARAM_VALUE.Stream15ClkFreqHz_g } {
	# Procedure called to validate Stream15ClkFreqHz_g
	return true
}

proc update_PARAM_VALUE.Stream15Prio_g { PARAM_VALUE.Stream15Prio_g } {
	# Procedure called to update Stream15Prio_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream15Prio_g { PARAM_VALUE.Stream15Prio_g } {
	# Procedure called to validate Stream15Prio_g
	return true
}

proc update_PARAM_VALUE.Stream15TimeoutUs_g { PARAM_VALUE.Stream15TimeoutUs_g } {
	# Procedure called to update Stream15TimeoutUs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream15TimeoutUs_g { PARAM_VALUE.Stream15TimeoutUs_g } {
	# Procedure called to validate Stream15TimeoutUs_g
	return true
}

proc update_PARAM_VALUE.Stream15TsFifoDepth_g { PARAM_VALUE.Stream15TsFifoDepth_g } {
	# Procedure called to update Stream15TsFifoDepth_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream15TsFifoDepth_g { PARAM_VALUE.Stream15TsFifoDepth_g } {
	# Procedure called to validate Stream15TsFifoDepth_g
	return true
}

proc update_PARAM_VALUE.Stream15UseTs_g { PARAM_VALUE.Stream15UseTs_g } {
	# Procedure called to update Stream15UseTs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream15UseTs_g { PARAM_VALUE.Stream15UseTs_g } {
	# Procedure called to validate Stream15UseTs_g
	return true
}

proc update_PARAM_VALUE.Stream15Width_g { PARAM_VALUE.Stream15Width_g } {
	# Procedure called to update Stream15Width_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream15Width_g { PARAM_VALUE.Stream15Width_g } {
	# Procedure called to validate Stream15Width_g
	return true
}

proc update_PARAM_VALUE.Stream1Buffer_g { PARAM_VALUE.Stream1Buffer_g } {
	# Procedure called to update Stream1Buffer_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream1Buffer_g { PARAM_VALUE.Stream1Buffer_g } {
	# Procedure called to validate Stream1Buffer_g
	return true
}

proc update_PARAM_VALUE.Stream1ClkFreqHz_g { PARAM_VALUE.Stream1ClkFreqHz_g } {
	# Procedure called to update Stream1ClkFreqHz_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream1ClkFreqHz_g { PARAM_VALUE.Stream1ClkFreqHz_g } {
	# Procedure called to validate Stream1ClkFreqHz_g
	return true
}

proc update_PARAM_VALUE.Stream1Prio_g { PARAM_VALUE.Stream1Prio_g } {
	# Procedure called to update Stream1Prio_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream1Prio_g { PARAM_VALUE.Stream1Prio_g } {
	# Procedure called to validate Stream1Prio_g
	return true
}

proc update_PARAM_VALUE.Stream1TimeoutUs_g { PARAM_VALUE.Stream1TimeoutUs_g } {
	# Procedure called to update Stream1TimeoutUs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream1TimeoutUs_g { PARAM_VALUE.Stream1TimeoutUs_g } {
	# Procedure called to validate Stream1TimeoutUs_g
	return true
}

proc update_PARAM_VALUE.Stream1TsFifoDepth_g { PARAM_VALUE.Stream1TsFifoDepth_g } {
	# Procedure called to update Stream1TsFifoDepth_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream1TsFifoDepth_g { PARAM_VALUE.Stream1TsFifoDepth_g } {
	# Procedure called to validate Stream1TsFifoDepth_g
	return true
}

proc update_PARAM_VALUE.Stream1UseTs_g { PARAM_VALUE.Stream1UseTs_g } {
	# Procedure called to update Stream1UseTs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream1UseTs_g { PARAM_VALUE.Stream1UseTs_g } {
	# Procedure called to validate Stream1UseTs_g
	return true
}

proc update_PARAM_VALUE.Stream1Width_g { PARAM_VALUE.Stream1Width_g } {
	# Procedure called to update Stream1Width_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream1Width_g { PARAM_VALUE.Stream1Width_g } {
	# Procedure called to validate Stream1Width_g
	return true
}

proc update_PARAM_VALUE.Stream2Buffer_g { PARAM_VALUE.Stream2Buffer_g } {
	# Procedure called to update Stream2Buffer_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream2Buffer_g { PARAM_VALUE.Stream2Buffer_g } {
	# Procedure called to validate Stream2Buffer_g
	return true
}

proc update_PARAM_VALUE.Stream2ClkFreqHz_g { PARAM_VALUE.Stream2ClkFreqHz_g } {
	# Procedure called to update Stream2ClkFreqHz_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream2ClkFreqHz_g { PARAM_VALUE.Stream2ClkFreqHz_g } {
	# Procedure called to validate Stream2ClkFreqHz_g
	return true
}

proc update_PARAM_VALUE.Stream2Prio_g { PARAM_VALUE.Stream2Prio_g } {
	# Procedure called to update Stream2Prio_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream2Prio_g { PARAM_VALUE.Stream2Prio_g } {
	# Procedure called to validate Stream2Prio_g
	return true
}

proc update_PARAM_VALUE.Stream2TimeoutUs_g { PARAM_VALUE.Stream2TimeoutUs_g } {
	# Procedure called to update Stream2TimeoutUs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream2TimeoutUs_g { PARAM_VALUE.Stream2TimeoutUs_g } {
	# Procedure called to validate Stream2TimeoutUs_g
	return true
}

proc update_PARAM_VALUE.Stream2TsFifoDepth_g { PARAM_VALUE.Stream2TsFifoDepth_g } {
	# Procedure called to update Stream2TsFifoDepth_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream2TsFifoDepth_g { PARAM_VALUE.Stream2TsFifoDepth_g } {
	# Procedure called to validate Stream2TsFifoDepth_g
	return true
}

proc update_PARAM_VALUE.Stream2UseTs_g { PARAM_VALUE.Stream2UseTs_g } {
	# Procedure called to update Stream2UseTs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream2UseTs_g { PARAM_VALUE.Stream2UseTs_g } {
	# Procedure called to validate Stream2UseTs_g
	return true
}

proc update_PARAM_VALUE.Stream2Width_g { PARAM_VALUE.Stream2Width_g } {
	# Procedure called to update Stream2Width_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream2Width_g { PARAM_VALUE.Stream2Width_g } {
	# Procedure called to validate Stream2Width_g
	return true
}

proc update_PARAM_VALUE.Stream3Buffer_g { PARAM_VALUE.Stream3Buffer_g } {
	# Procedure called to update Stream3Buffer_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream3Buffer_g { PARAM_VALUE.Stream3Buffer_g } {
	# Procedure called to validate Stream3Buffer_g
	return true
}

proc update_PARAM_VALUE.Stream3ClkFreqHz_g { PARAM_VALUE.Stream3ClkFreqHz_g } {
	# Procedure called to update Stream3ClkFreqHz_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream3ClkFreqHz_g { PARAM_VALUE.Stream3ClkFreqHz_g } {
	# Procedure called to validate Stream3ClkFreqHz_g
	return true
}

proc update_PARAM_VALUE.Stream3Prio_g { PARAM_VALUE.Stream3Prio_g } {
	# Procedure called to update Stream3Prio_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream3Prio_g { PARAM_VALUE.Stream3Prio_g } {
	# Procedure called to validate Stream3Prio_g
	return true
}

proc update_PARAM_VALUE.Stream3TimeoutUs_g { PARAM_VALUE.Stream3TimeoutUs_g } {
	# Procedure called to update Stream3TimeoutUs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream3TimeoutUs_g { PARAM_VALUE.Stream3TimeoutUs_g } {
	# Procedure called to validate Stream3TimeoutUs_g
	return true
}

proc update_PARAM_VALUE.Stream3TsFifoDepth_g { PARAM_VALUE.Stream3TsFifoDepth_g } {
	# Procedure called to update Stream3TsFifoDepth_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream3TsFifoDepth_g { PARAM_VALUE.Stream3TsFifoDepth_g } {
	# Procedure called to validate Stream3TsFifoDepth_g
	return true
}

proc update_PARAM_VALUE.Stream3UseTs_g { PARAM_VALUE.Stream3UseTs_g } {
	# Procedure called to update Stream3UseTs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream3UseTs_g { PARAM_VALUE.Stream3UseTs_g } {
	# Procedure called to validate Stream3UseTs_g
	return true
}

proc update_PARAM_VALUE.Stream3Width_g { PARAM_VALUE.Stream3Width_g } {
	# Procedure called to update Stream3Width_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream3Width_g { PARAM_VALUE.Stream3Width_g } {
	# Procedure called to validate Stream3Width_g
	return true
}

proc update_PARAM_VALUE.Stream4Buffer_g { PARAM_VALUE.Stream4Buffer_g } {
	# Procedure called to update Stream4Buffer_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream4Buffer_g { PARAM_VALUE.Stream4Buffer_g } {
	# Procedure called to validate Stream4Buffer_g
	return true
}

proc update_PARAM_VALUE.Stream4ClkFreqHz_g { PARAM_VALUE.Stream4ClkFreqHz_g } {
	# Procedure called to update Stream4ClkFreqHz_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream4ClkFreqHz_g { PARAM_VALUE.Stream4ClkFreqHz_g } {
	# Procedure called to validate Stream4ClkFreqHz_g
	return true
}

proc update_PARAM_VALUE.Stream4Prio_g { PARAM_VALUE.Stream4Prio_g } {
	# Procedure called to update Stream4Prio_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream4Prio_g { PARAM_VALUE.Stream4Prio_g } {
	# Procedure called to validate Stream4Prio_g
	return true
}

proc update_PARAM_VALUE.Stream4TimeoutUs_g { PARAM_VALUE.Stream4TimeoutUs_g } {
	# Procedure called to update Stream4TimeoutUs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream4TimeoutUs_g { PARAM_VALUE.Stream4TimeoutUs_g } {
	# Procedure called to validate Stream4TimeoutUs_g
	return true
}

proc update_PARAM_VALUE.Stream4TsFifoDepth_g { PARAM_VALUE.Stream4TsFifoDepth_g } {
	# Procedure called to update Stream4TsFifoDepth_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream4TsFifoDepth_g { PARAM_VALUE.Stream4TsFifoDepth_g } {
	# Procedure called to validate Stream4TsFifoDepth_g
	return true
}

proc update_PARAM_VALUE.Stream4UseTs_g { PARAM_VALUE.Stream4UseTs_g } {
	# Procedure called to update Stream4UseTs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream4UseTs_g { PARAM_VALUE.Stream4UseTs_g } {
	# Procedure called to validate Stream4UseTs_g
	return true
}

proc update_PARAM_VALUE.Stream4Width_g { PARAM_VALUE.Stream4Width_g } {
	# Procedure called to update Stream4Width_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream4Width_g { PARAM_VALUE.Stream4Width_g } {
	# Procedure called to validate Stream4Width_g
	return true
}

proc update_PARAM_VALUE.Stream5Buffer_g { PARAM_VALUE.Stream5Buffer_g } {
	# Procedure called to update Stream5Buffer_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream5Buffer_g { PARAM_VALUE.Stream5Buffer_g } {
	# Procedure called to validate Stream5Buffer_g
	return true
}

proc update_PARAM_VALUE.Stream5ClkFreqHz_g { PARAM_VALUE.Stream5ClkFreqHz_g } {
	# Procedure called to update Stream5ClkFreqHz_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream5ClkFreqHz_g { PARAM_VALUE.Stream5ClkFreqHz_g } {
	# Procedure called to validate Stream5ClkFreqHz_g
	return true
}

proc update_PARAM_VALUE.Stream5Prio_g { PARAM_VALUE.Stream5Prio_g } {
	# Procedure called to update Stream5Prio_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream5Prio_g { PARAM_VALUE.Stream5Prio_g } {
	# Procedure called to validate Stream5Prio_g
	return true
}

proc update_PARAM_VALUE.Stream5TimeoutUs_g { PARAM_VALUE.Stream5TimeoutUs_g } {
	# Procedure called to update Stream5TimeoutUs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream5TimeoutUs_g { PARAM_VALUE.Stream5TimeoutUs_g } {
	# Procedure called to validate Stream5TimeoutUs_g
	return true
}

proc update_PARAM_VALUE.Stream5TsFifoDepth_g { PARAM_VALUE.Stream5TsFifoDepth_g } {
	# Procedure called to update Stream5TsFifoDepth_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream5TsFifoDepth_g { PARAM_VALUE.Stream5TsFifoDepth_g } {
	# Procedure called to validate Stream5TsFifoDepth_g
	return true
}

proc update_PARAM_VALUE.Stream5UseTs_g { PARAM_VALUE.Stream5UseTs_g } {
	# Procedure called to update Stream5UseTs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream5UseTs_g { PARAM_VALUE.Stream5UseTs_g } {
	# Procedure called to validate Stream5UseTs_g
	return true
}

proc update_PARAM_VALUE.Stream5Width_g { PARAM_VALUE.Stream5Width_g } {
	# Procedure called to update Stream5Width_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream5Width_g { PARAM_VALUE.Stream5Width_g } {
	# Procedure called to validate Stream5Width_g
	return true
}

proc update_PARAM_VALUE.Stream6Buffer_g { PARAM_VALUE.Stream6Buffer_g } {
	# Procedure called to update Stream6Buffer_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream6Buffer_g { PARAM_VALUE.Stream6Buffer_g } {
	# Procedure called to validate Stream6Buffer_g
	return true
}

proc update_PARAM_VALUE.Stream6ClkFreqHz_g { PARAM_VALUE.Stream6ClkFreqHz_g } {
	# Procedure called to update Stream6ClkFreqHz_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream6ClkFreqHz_g { PARAM_VALUE.Stream6ClkFreqHz_g } {
	# Procedure called to validate Stream6ClkFreqHz_g
	return true
}

proc update_PARAM_VALUE.Stream6Prio_g { PARAM_VALUE.Stream6Prio_g } {
	# Procedure called to update Stream6Prio_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream6Prio_g { PARAM_VALUE.Stream6Prio_g } {
	# Procedure called to validate Stream6Prio_g
	return true
}

proc update_PARAM_VALUE.Stream6TimeoutUs_g { PARAM_VALUE.Stream6TimeoutUs_g } {
	# Procedure called to update Stream6TimeoutUs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream6TimeoutUs_g { PARAM_VALUE.Stream6TimeoutUs_g } {
	# Procedure called to validate Stream6TimeoutUs_g
	return true
}

proc update_PARAM_VALUE.Stream6TsFifoDepth_g { PARAM_VALUE.Stream6TsFifoDepth_g } {
	# Procedure called to update Stream6TsFifoDepth_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream6TsFifoDepth_g { PARAM_VALUE.Stream6TsFifoDepth_g } {
	# Procedure called to validate Stream6TsFifoDepth_g
	return true
}

proc update_PARAM_VALUE.Stream6UseTs_g { PARAM_VALUE.Stream6UseTs_g } {
	# Procedure called to update Stream6UseTs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream6UseTs_g { PARAM_VALUE.Stream6UseTs_g } {
	# Procedure called to validate Stream6UseTs_g
	return true
}

proc update_PARAM_VALUE.Stream6Width_g { PARAM_VALUE.Stream6Width_g } {
	# Procedure called to update Stream6Width_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream6Width_g { PARAM_VALUE.Stream6Width_g } {
	# Procedure called to validate Stream6Width_g
	return true
}

proc update_PARAM_VALUE.Stream7Buffer_g { PARAM_VALUE.Stream7Buffer_g } {
	# Procedure called to update Stream7Buffer_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream7Buffer_g { PARAM_VALUE.Stream7Buffer_g } {
	# Procedure called to validate Stream7Buffer_g
	return true
}

proc update_PARAM_VALUE.Stream7ClkFreqHz_g { PARAM_VALUE.Stream7ClkFreqHz_g } {
	# Procedure called to update Stream7ClkFreqHz_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream7ClkFreqHz_g { PARAM_VALUE.Stream7ClkFreqHz_g } {
	# Procedure called to validate Stream7ClkFreqHz_g
	return true
}

proc update_PARAM_VALUE.Stream7Prio_g { PARAM_VALUE.Stream7Prio_g } {
	# Procedure called to update Stream7Prio_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream7Prio_g { PARAM_VALUE.Stream7Prio_g } {
	# Procedure called to validate Stream7Prio_g
	return true
}

proc update_PARAM_VALUE.Stream7TimeoutUs_g { PARAM_VALUE.Stream7TimeoutUs_g } {
	# Procedure called to update Stream7TimeoutUs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream7TimeoutUs_g { PARAM_VALUE.Stream7TimeoutUs_g } {
	# Procedure called to validate Stream7TimeoutUs_g
	return true
}

proc update_PARAM_VALUE.Stream7TsFifoDepth_g { PARAM_VALUE.Stream7TsFifoDepth_g } {
	# Procedure called to update Stream7TsFifoDepth_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream7TsFifoDepth_g { PARAM_VALUE.Stream7TsFifoDepth_g } {
	# Procedure called to validate Stream7TsFifoDepth_g
	return true
}

proc update_PARAM_VALUE.Stream7UseTs_g { PARAM_VALUE.Stream7UseTs_g } {
	# Procedure called to update Stream7UseTs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream7UseTs_g { PARAM_VALUE.Stream7UseTs_g } {
	# Procedure called to validate Stream7UseTs_g
	return true
}

proc update_PARAM_VALUE.Stream7Width_g { PARAM_VALUE.Stream7Width_g } {
	# Procedure called to update Stream7Width_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream7Width_g { PARAM_VALUE.Stream7Width_g } {
	# Procedure called to validate Stream7Width_g
	return true
}

proc update_PARAM_VALUE.Stream8Buffer_g { PARAM_VALUE.Stream8Buffer_g } {
	# Procedure called to update Stream8Buffer_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream8Buffer_g { PARAM_VALUE.Stream8Buffer_g } {
	# Procedure called to validate Stream8Buffer_g
	return true
}

proc update_PARAM_VALUE.Stream8ClkFreqHz_g { PARAM_VALUE.Stream8ClkFreqHz_g } {
	# Procedure called to update Stream8ClkFreqHz_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream8ClkFreqHz_g { PARAM_VALUE.Stream8ClkFreqHz_g } {
	# Procedure called to validate Stream8ClkFreqHz_g
	return true
}

proc update_PARAM_VALUE.Stream8Prio_g { PARAM_VALUE.Stream8Prio_g } {
	# Procedure called to update Stream8Prio_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream8Prio_g { PARAM_VALUE.Stream8Prio_g } {
	# Procedure called to validate Stream8Prio_g
	return true
}

proc update_PARAM_VALUE.Stream8TimeoutUs_g { PARAM_VALUE.Stream8TimeoutUs_g } {
	# Procedure called to update Stream8TimeoutUs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream8TimeoutUs_g { PARAM_VALUE.Stream8TimeoutUs_g } {
	# Procedure called to validate Stream8TimeoutUs_g
	return true
}

proc update_PARAM_VALUE.Stream8TsFifoDepth_g { PARAM_VALUE.Stream8TsFifoDepth_g } {
	# Procedure called to update Stream8TsFifoDepth_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream8TsFifoDepth_g { PARAM_VALUE.Stream8TsFifoDepth_g } {
	# Procedure called to validate Stream8TsFifoDepth_g
	return true
}

proc update_PARAM_VALUE.Stream8UseTs_g { PARAM_VALUE.Stream8UseTs_g } {
	# Procedure called to update Stream8UseTs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream8UseTs_g { PARAM_VALUE.Stream8UseTs_g } {
	# Procedure called to validate Stream8UseTs_g
	return true
}

proc update_PARAM_VALUE.Stream8Width_g { PARAM_VALUE.Stream8Width_g } {
	# Procedure called to update Stream8Width_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream8Width_g { PARAM_VALUE.Stream8Width_g } {
	# Procedure called to validate Stream8Width_g
	return true
}

proc update_PARAM_VALUE.Stream9Buffer_g { PARAM_VALUE.Stream9Buffer_g } {
	# Procedure called to update Stream9Buffer_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream9Buffer_g { PARAM_VALUE.Stream9Buffer_g } {
	# Procedure called to validate Stream9Buffer_g
	return true
}

proc update_PARAM_VALUE.Stream9ClkFreqHz_g { PARAM_VALUE.Stream9ClkFreqHz_g } {
	# Procedure called to update Stream9ClkFreqHz_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream9ClkFreqHz_g { PARAM_VALUE.Stream9ClkFreqHz_g } {
	# Procedure called to validate Stream9ClkFreqHz_g
	return true
}

proc update_PARAM_VALUE.Stream9Prio_g { PARAM_VALUE.Stream9Prio_g } {
	# Procedure called to update Stream9Prio_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream9Prio_g { PARAM_VALUE.Stream9Prio_g } {
	# Procedure called to validate Stream9Prio_g
	return true
}

proc update_PARAM_VALUE.Stream9TimeoutUs_g { PARAM_VALUE.Stream9TimeoutUs_g } {
	# Procedure called to update Stream9TimeoutUs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream9TimeoutUs_g { PARAM_VALUE.Stream9TimeoutUs_g } {
	# Procedure called to validate Stream9TimeoutUs_g
	return true
}

proc update_PARAM_VALUE.Stream9TsFifoDepth_g { PARAM_VALUE.Stream9TsFifoDepth_g } {
	# Procedure called to update Stream9TsFifoDepth_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream9TsFifoDepth_g { PARAM_VALUE.Stream9TsFifoDepth_g } {
	# Procedure called to validate Stream9TsFifoDepth_g
	return true
}

proc update_PARAM_VALUE.Stream9UseTs_g { PARAM_VALUE.Stream9UseTs_g } {
	# Procedure called to update Stream9UseTs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream9UseTs_g { PARAM_VALUE.Stream9UseTs_g } {
	# Procedure called to validate Stream9UseTs_g
	return true
}

proc update_PARAM_VALUE.Stream9Width_g { PARAM_VALUE.Stream9Width_g } {
	# Procedure called to update Stream9Width_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stream9Width_g { PARAM_VALUE.Stream9Width_g } {
	# Procedure called to validate Stream9Width_g
	return true
}

proc update_PARAM_VALUE.Streams_g { PARAM_VALUE.Streams_g } {
	# Procedure called to update Streams_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Streams_g { PARAM_VALUE.Streams_g } {
	# Procedure called to validate Streams_g
	return true
}

proc update_PARAM_VALUE.TsPerStream_g { PARAM_VALUE.TsPerStream_g } {
	# Procedure called to update TsPerStream_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TsPerStream_g { PARAM_VALUE.TsPerStream_g } {
	# Procedure called to validate TsPerStream_g
	return true
}


proc update_MODELPARAM_VALUE.Streams_g { MODELPARAM_VALUE.Streams_g PARAM_VALUE.Streams_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Streams_g}] ${MODELPARAM_VALUE.Streams_g}
}

proc update_MODELPARAM_VALUE.TsPerStream_g { MODELPARAM_VALUE.TsPerStream_g PARAM_VALUE.TsPerStream_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TsPerStream_g}] ${MODELPARAM_VALUE.TsPerStream_g}
}

proc update_MODELPARAM_VALUE.MaxWindows_g { MODELPARAM_VALUE.MaxWindows_g PARAM_VALUE.MaxWindows_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MaxWindows_g}] ${MODELPARAM_VALUE.MaxWindows_g}
}

proc update_MODELPARAM_VALUE.MinBurstSize_g { MODELPARAM_VALUE.MinBurstSize_g PARAM_VALUE.MinBurstSize_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MinBurstSize_g}] ${MODELPARAM_VALUE.MinBurstSize_g}
}

proc update_MODELPARAM_VALUE.MaxBurstSize_g { MODELPARAM_VALUE.MaxBurstSize_g PARAM_VALUE.MaxBurstSize_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MaxBurstSize_g}] ${MODELPARAM_VALUE.MaxBurstSize_g}
}

proc update_MODELPARAM_VALUE.AxiDataWidth_g { MODELPARAM_VALUE.AxiDataWidth_g PARAM_VALUE.AxiDataWidth_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AxiDataWidth_g}] ${MODELPARAM_VALUE.AxiDataWidth_g}
}

proc update_MODELPARAM_VALUE.AxiMaxBurstBeats_g { MODELPARAM_VALUE.AxiMaxBurstBeats_g PARAM_VALUE.AxiMaxBurstBeats_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AxiMaxBurstBeats_g}] ${MODELPARAM_VALUE.AxiMaxBurstBeats_g}
}

proc update_MODELPARAM_VALUE.AxiMaxOpenTrasactions_g { MODELPARAM_VALUE.AxiMaxOpenTrasactions_g PARAM_VALUE.AxiMaxOpenTrasactions_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AxiMaxOpenTrasactions_g}] ${MODELPARAM_VALUE.AxiMaxOpenTrasactions_g}
}

proc update_MODELPARAM_VALUE.AxiFifoDepth_g { MODELPARAM_VALUE.AxiFifoDepth_g PARAM_VALUE.AxiFifoDepth_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AxiFifoDepth_g}] ${MODELPARAM_VALUE.AxiFifoDepth_g}
}

proc update_MODELPARAM_VALUE.Stream0Width_g { MODELPARAM_VALUE.Stream0Width_g PARAM_VALUE.Stream0Width_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream0Width_g}] ${MODELPARAM_VALUE.Stream0Width_g}
}

proc update_MODELPARAM_VALUE.Stream0Prio_g { MODELPARAM_VALUE.Stream0Prio_g PARAM_VALUE.Stream0Prio_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream0Prio_g}] ${MODELPARAM_VALUE.Stream0Prio_g}
}

proc update_MODELPARAM_VALUE.Stream0Buffer_g { MODELPARAM_VALUE.Stream0Buffer_g PARAM_VALUE.Stream0Buffer_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream0Buffer_g}] ${MODELPARAM_VALUE.Stream0Buffer_g}
}

proc update_MODELPARAM_VALUE.Stream0TimeoutUs_g { MODELPARAM_VALUE.Stream0TimeoutUs_g PARAM_VALUE.Stream0TimeoutUs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream0TimeoutUs_g}] ${MODELPARAM_VALUE.Stream0TimeoutUs_g}
}

proc update_MODELPARAM_VALUE.Stream0ClkFreqHz_g { MODELPARAM_VALUE.Stream0ClkFreqHz_g PARAM_VALUE.Stream0ClkFreqHz_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream0ClkFreqHz_g}] ${MODELPARAM_VALUE.Stream0ClkFreqHz_g}
}

proc update_MODELPARAM_VALUE.Stream0TsFifoDepth_g { MODELPARAM_VALUE.Stream0TsFifoDepth_g PARAM_VALUE.Stream0TsFifoDepth_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream0TsFifoDepth_g}] ${MODELPARAM_VALUE.Stream0TsFifoDepth_g}
}

proc update_MODELPARAM_VALUE.Stream0UseTs_g { MODELPARAM_VALUE.Stream0UseTs_g PARAM_VALUE.Stream0UseTs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream0UseTs_g}] ${MODELPARAM_VALUE.Stream0UseTs_g}
}

proc update_MODELPARAM_VALUE.Stream1Width_g { MODELPARAM_VALUE.Stream1Width_g PARAM_VALUE.Stream1Width_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream1Width_g}] ${MODELPARAM_VALUE.Stream1Width_g}
}

proc update_MODELPARAM_VALUE.Stream1Prio_g { MODELPARAM_VALUE.Stream1Prio_g PARAM_VALUE.Stream1Prio_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream1Prio_g}] ${MODELPARAM_VALUE.Stream1Prio_g}
}

proc update_MODELPARAM_VALUE.Stream1Buffer_g { MODELPARAM_VALUE.Stream1Buffer_g PARAM_VALUE.Stream1Buffer_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream1Buffer_g}] ${MODELPARAM_VALUE.Stream1Buffer_g}
}

proc update_MODELPARAM_VALUE.Stream1TimeoutUs_g { MODELPARAM_VALUE.Stream1TimeoutUs_g PARAM_VALUE.Stream1TimeoutUs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream1TimeoutUs_g}] ${MODELPARAM_VALUE.Stream1TimeoutUs_g}
}

proc update_MODELPARAM_VALUE.Stream1ClkFreqHz_g { MODELPARAM_VALUE.Stream1ClkFreqHz_g PARAM_VALUE.Stream1ClkFreqHz_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream1ClkFreqHz_g}] ${MODELPARAM_VALUE.Stream1ClkFreqHz_g}
}

proc update_MODELPARAM_VALUE.Stream1TsFifoDepth_g { MODELPARAM_VALUE.Stream1TsFifoDepth_g PARAM_VALUE.Stream1TsFifoDepth_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream1TsFifoDepth_g}] ${MODELPARAM_VALUE.Stream1TsFifoDepth_g}
}

proc update_MODELPARAM_VALUE.Stream1UseTs_g { MODELPARAM_VALUE.Stream1UseTs_g PARAM_VALUE.Stream1UseTs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream1UseTs_g}] ${MODELPARAM_VALUE.Stream1UseTs_g}
}

proc update_MODELPARAM_VALUE.Stream2Width_g { MODELPARAM_VALUE.Stream2Width_g PARAM_VALUE.Stream2Width_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream2Width_g}] ${MODELPARAM_VALUE.Stream2Width_g}
}

proc update_MODELPARAM_VALUE.Stream2Prio_g { MODELPARAM_VALUE.Stream2Prio_g PARAM_VALUE.Stream2Prio_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream2Prio_g}] ${MODELPARAM_VALUE.Stream2Prio_g}
}

proc update_MODELPARAM_VALUE.Stream2Buffer_g { MODELPARAM_VALUE.Stream2Buffer_g PARAM_VALUE.Stream2Buffer_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream2Buffer_g}] ${MODELPARAM_VALUE.Stream2Buffer_g}
}

proc update_MODELPARAM_VALUE.Stream2TimeoutUs_g { MODELPARAM_VALUE.Stream2TimeoutUs_g PARAM_VALUE.Stream2TimeoutUs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream2TimeoutUs_g}] ${MODELPARAM_VALUE.Stream2TimeoutUs_g}
}

proc update_MODELPARAM_VALUE.Stream2ClkFreqHz_g { MODELPARAM_VALUE.Stream2ClkFreqHz_g PARAM_VALUE.Stream2ClkFreqHz_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream2ClkFreqHz_g}] ${MODELPARAM_VALUE.Stream2ClkFreqHz_g}
}

proc update_MODELPARAM_VALUE.Stream2TsFifoDepth_g { MODELPARAM_VALUE.Stream2TsFifoDepth_g PARAM_VALUE.Stream2TsFifoDepth_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream2TsFifoDepth_g}] ${MODELPARAM_VALUE.Stream2TsFifoDepth_g}
}

proc update_MODELPARAM_VALUE.Stream2UseTs_g { MODELPARAM_VALUE.Stream2UseTs_g PARAM_VALUE.Stream2UseTs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream2UseTs_g}] ${MODELPARAM_VALUE.Stream2UseTs_g}
}

proc update_MODELPARAM_VALUE.Stream3Width_g { MODELPARAM_VALUE.Stream3Width_g PARAM_VALUE.Stream3Width_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream3Width_g}] ${MODELPARAM_VALUE.Stream3Width_g}
}

proc update_MODELPARAM_VALUE.Stream3Prio_g { MODELPARAM_VALUE.Stream3Prio_g PARAM_VALUE.Stream3Prio_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream3Prio_g}] ${MODELPARAM_VALUE.Stream3Prio_g}
}

proc update_MODELPARAM_VALUE.Stream3Buffer_g { MODELPARAM_VALUE.Stream3Buffer_g PARAM_VALUE.Stream3Buffer_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream3Buffer_g}] ${MODELPARAM_VALUE.Stream3Buffer_g}
}

proc update_MODELPARAM_VALUE.Stream3TimeoutUs_g { MODELPARAM_VALUE.Stream3TimeoutUs_g PARAM_VALUE.Stream3TimeoutUs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream3TimeoutUs_g}] ${MODELPARAM_VALUE.Stream3TimeoutUs_g}
}

proc update_MODELPARAM_VALUE.Stream3ClkFreqHz_g { MODELPARAM_VALUE.Stream3ClkFreqHz_g PARAM_VALUE.Stream3ClkFreqHz_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream3ClkFreqHz_g}] ${MODELPARAM_VALUE.Stream3ClkFreqHz_g}
}

proc update_MODELPARAM_VALUE.Stream3TsFifoDepth_g { MODELPARAM_VALUE.Stream3TsFifoDepth_g PARAM_VALUE.Stream3TsFifoDepth_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream3TsFifoDepth_g}] ${MODELPARAM_VALUE.Stream3TsFifoDepth_g}
}

proc update_MODELPARAM_VALUE.Stream3UseTs_g { MODELPARAM_VALUE.Stream3UseTs_g PARAM_VALUE.Stream3UseTs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream3UseTs_g}] ${MODELPARAM_VALUE.Stream3UseTs_g}
}

proc update_MODELPARAM_VALUE.Stream4Width_g { MODELPARAM_VALUE.Stream4Width_g PARAM_VALUE.Stream4Width_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream4Width_g}] ${MODELPARAM_VALUE.Stream4Width_g}
}

proc update_MODELPARAM_VALUE.Stream4Prio_g { MODELPARAM_VALUE.Stream4Prio_g PARAM_VALUE.Stream4Prio_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream4Prio_g}] ${MODELPARAM_VALUE.Stream4Prio_g}
}

proc update_MODELPARAM_VALUE.Stream4Buffer_g { MODELPARAM_VALUE.Stream4Buffer_g PARAM_VALUE.Stream4Buffer_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream4Buffer_g}] ${MODELPARAM_VALUE.Stream4Buffer_g}
}

proc update_MODELPARAM_VALUE.Stream4TimeoutUs_g { MODELPARAM_VALUE.Stream4TimeoutUs_g PARAM_VALUE.Stream4TimeoutUs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream4TimeoutUs_g}] ${MODELPARAM_VALUE.Stream4TimeoutUs_g}
}

proc update_MODELPARAM_VALUE.Stream4ClkFreqHz_g { MODELPARAM_VALUE.Stream4ClkFreqHz_g PARAM_VALUE.Stream4ClkFreqHz_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream4ClkFreqHz_g}] ${MODELPARAM_VALUE.Stream4ClkFreqHz_g}
}

proc update_MODELPARAM_VALUE.Stream4TsFifoDepth_g { MODELPARAM_VALUE.Stream4TsFifoDepth_g PARAM_VALUE.Stream4TsFifoDepth_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream4TsFifoDepth_g}] ${MODELPARAM_VALUE.Stream4TsFifoDepth_g}
}

proc update_MODELPARAM_VALUE.Stream4UseTs_g { MODELPARAM_VALUE.Stream4UseTs_g PARAM_VALUE.Stream4UseTs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream4UseTs_g}] ${MODELPARAM_VALUE.Stream4UseTs_g}
}

proc update_MODELPARAM_VALUE.Stream5Width_g { MODELPARAM_VALUE.Stream5Width_g PARAM_VALUE.Stream5Width_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream5Width_g}] ${MODELPARAM_VALUE.Stream5Width_g}
}

proc update_MODELPARAM_VALUE.Stream5Prio_g { MODELPARAM_VALUE.Stream5Prio_g PARAM_VALUE.Stream5Prio_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream5Prio_g}] ${MODELPARAM_VALUE.Stream5Prio_g}
}

proc update_MODELPARAM_VALUE.Stream5Buffer_g { MODELPARAM_VALUE.Stream5Buffer_g PARAM_VALUE.Stream5Buffer_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream5Buffer_g}] ${MODELPARAM_VALUE.Stream5Buffer_g}
}

proc update_MODELPARAM_VALUE.Stream5TimeoutUs_g { MODELPARAM_VALUE.Stream5TimeoutUs_g PARAM_VALUE.Stream5TimeoutUs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream5TimeoutUs_g}] ${MODELPARAM_VALUE.Stream5TimeoutUs_g}
}

proc update_MODELPARAM_VALUE.Stream5ClkFreqHz_g { MODELPARAM_VALUE.Stream5ClkFreqHz_g PARAM_VALUE.Stream5ClkFreqHz_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream5ClkFreqHz_g}] ${MODELPARAM_VALUE.Stream5ClkFreqHz_g}
}

proc update_MODELPARAM_VALUE.Stream5TsFifoDepth_g { MODELPARAM_VALUE.Stream5TsFifoDepth_g PARAM_VALUE.Stream5TsFifoDepth_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream5TsFifoDepth_g}] ${MODELPARAM_VALUE.Stream5TsFifoDepth_g}
}

proc update_MODELPARAM_VALUE.Stream5UseTs_g { MODELPARAM_VALUE.Stream5UseTs_g PARAM_VALUE.Stream5UseTs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream5UseTs_g}] ${MODELPARAM_VALUE.Stream5UseTs_g}
}

proc update_MODELPARAM_VALUE.Stream6Width_g { MODELPARAM_VALUE.Stream6Width_g PARAM_VALUE.Stream6Width_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream6Width_g}] ${MODELPARAM_VALUE.Stream6Width_g}
}

proc update_MODELPARAM_VALUE.Stream6Prio_g { MODELPARAM_VALUE.Stream6Prio_g PARAM_VALUE.Stream6Prio_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream6Prio_g}] ${MODELPARAM_VALUE.Stream6Prio_g}
}

proc update_MODELPARAM_VALUE.Stream6Buffer_g { MODELPARAM_VALUE.Stream6Buffer_g PARAM_VALUE.Stream6Buffer_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream6Buffer_g}] ${MODELPARAM_VALUE.Stream6Buffer_g}
}

proc update_MODELPARAM_VALUE.Stream6TimeoutUs_g { MODELPARAM_VALUE.Stream6TimeoutUs_g PARAM_VALUE.Stream6TimeoutUs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream6TimeoutUs_g}] ${MODELPARAM_VALUE.Stream6TimeoutUs_g}
}

proc update_MODELPARAM_VALUE.Stream6ClkFreqHz_g { MODELPARAM_VALUE.Stream6ClkFreqHz_g PARAM_VALUE.Stream6ClkFreqHz_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream6ClkFreqHz_g}] ${MODELPARAM_VALUE.Stream6ClkFreqHz_g}
}

proc update_MODELPARAM_VALUE.Stream6TsFifoDepth_g { MODELPARAM_VALUE.Stream6TsFifoDepth_g PARAM_VALUE.Stream6TsFifoDepth_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream6TsFifoDepth_g}] ${MODELPARAM_VALUE.Stream6TsFifoDepth_g}
}

proc update_MODELPARAM_VALUE.Stream6UseTs_g { MODELPARAM_VALUE.Stream6UseTs_g PARAM_VALUE.Stream6UseTs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream6UseTs_g}] ${MODELPARAM_VALUE.Stream6UseTs_g}
}

proc update_MODELPARAM_VALUE.Stream7Width_g { MODELPARAM_VALUE.Stream7Width_g PARAM_VALUE.Stream7Width_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream7Width_g}] ${MODELPARAM_VALUE.Stream7Width_g}
}

proc update_MODELPARAM_VALUE.Stream7Prio_g { MODELPARAM_VALUE.Stream7Prio_g PARAM_VALUE.Stream7Prio_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream7Prio_g}] ${MODELPARAM_VALUE.Stream7Prio_g}
}

proc update_MODELPARAM_VALUE.Stream7Buffer_g { MODELPARAM_VALUE.Stream7Buffer_g PARAM_VALUE.Stream7Buffer_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream7Buffer_g}] ${MODELPARAM_VALUE.Stream7Buffer_g}
}

proc update_MODELPARAM_VALUE.Stream7TimeoutUs_g { MODELPARAM_VALUE.Stream7TimeoutUs_g PARAM_VALUE.Stream7TimeoutUs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream7TimeoutUs_g}] ${MODELPARAM_VALUE.Stream7TimeoutUs_g}
}

proc update_MODELPARAM_VALUE.Stream7ClkFreqHz_g { MODELPARAM_VALUE.Stream7ClkFreqHz_g PARAM_VALUE.Stream7ClkFreqHz_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream7ClkFreqHz_g}] ${MODELPARAM_VALUE.Stream7ClkFreqHz_g}
}

proc update_MODELPARAM_VALUE.Stream7TsFifoDepth_g { MODELPARAM_VALUE.Stream7TsFifoDepth_g PARAM_VALUE.Stream7TsFifoDepth_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream7TsFifoDepth_g}] ${MODELPARAM_VALUE.Stream7TsFifoDepth_g}
}

proc update_MODELPARAM_VALUE.Stream7UseTs_g { MODELPARAM_VALUE.Stream7UseTs_g PARAM_VALUE.Stream7UseTs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream7UseTs_g}] ${MODELPARAM_VALUE.Stream7UseTs_g}
}

proc update_MODELPARAM_VALUE.Stream8Width_g { MODELPARAM_VALUE.Stream8Width_g PARAM_VALUE.Stream8Width_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream8Width_g}] ${MODELPARAM_VALUE.Stream8Width_g}
}

proc update_MODELPARAM_VALUE.Stream8Prio_g { MODELPARAM_VALUE.Stream8Prio_g PARAM_VALUE.Stream8Prio_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream8Prio_g}] ${MODELPARAM_VALUE.Stream8Prio_g}
}

proc update_MODELPARAM_VALUE.Stream8Buffer_g { MODELPARAM_VALUE.Stream8Buffer_g PARAM_VALUE.Stream8Buffer_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream8Buffer_g}] ${MODELPARAM_VALUE.Stream8Buffer_g}
}

proc update_MODELPARAM_VALUE.Stream8TimeoutUs_g { MODELPARAM_VALUE.Stream8TimeoutUs_g PARAM_VALUE.Stream8TimeoutUs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream8TimeoutUs_g}] ${MODELPARAM_VALUE.Stream8TimeoutUs_g}
}

proc update_MODELPARAM_VALUE.Stream8ClkFreqHz_g { MODELPARAM_VALUE.Stream8ClkFreqHz_g PARAM_VALUE.Stream8ClkFreqHz_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream8ClkFreqHz_g}] ${MODELPARAM_VALUE.Stream8ClkFreqHz_g}
}

proc update_MODELPARAM_VALUE.Stream8TsFifoDepth_g { MODELPARAM_VALUE.Stream8TsFifoDepth_g PARAM_VALUE.Stream8TsFifoDepth_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream8TsFifoDepth_g}] ${MODELPARAM_VALUE.Stream8TsFifoDepth_g}
}

proc update_MODELPARAM_VALUE.Stream8UseTs_g { MODELPARAM_VALUE.Stream8UseTs_g PARAM_VALUE.Stream8UseTs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream8UseTs_g}] ${MODELPARAM_VALUE.Stream8UseTs_g}
}

proc update_MODELPARAM_VALUE.Stream9Width_g { MODELPARAM_VALUE.Stream9Width_g PARAM_VALUE.Stream9Width_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream9Width_g}] ${MODELPARAM_VALUE.Stream9Width_g}
}

proc update_MODELPARAM_VALUE.Stream9Prio_g { MODELPARAM_VALUE.Stream9Prio_g PARAM_VALUE.Stream9Prio_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream9Prio_g}] ${MODELPARAM_VALUE.Stream9Prio_g}
}

proc update_MODELPARAM_VALUE.Stream9Buffer_g { MODELPARAM_VALUE.Stream9Buffer_g PARAM_VALUE.Stream9Buffer_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream9Buffer_g}] ${MODELPARAM_VALUE.Stream9Buffer_g}
}

proc update_MODELPARAM_VALUE.Stream9TimeoutUs_g { MODELPARAM_VALUE.Stream9TimeoutUs_g PARAM_VALUE.Stream9TimeoutUs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream9TimeoutUs_g}] ${MODELPARAM_VALUE.Stream9TimeoutUs_g}
}

proc update_MODELPARAM_VALUE.Stream9ClkFreqHz_g { MODELPARAM_VALUE.Stream9ClkFreqHz_g PARAM_VALUE.Stream9ClkFreqHz_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream9ClkFreqHz_g}] ${MODELPARAM_VALUE.Stream9ClkFreqHz_g}
}

proc update_MODELPARAM_VALUE.Stream9TsFifoDepth_g { MODELPARAM_VALUE.Stream9TsFifoDepth_g PARAM_VALUE.Stream9TsFifoDepth_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream9TsFifoDepth_g}] ${MODELPARAM_VALUE.Stream9TsFifoDepth_g}
}

proc update_MODELPARAM_VALUE.Stream9UseTs_g { MODELPARAM_VALUE.Stream9UseTs_g PARAM_VALUE.Stream9UseTs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream9UseTs_g}] ${MODELPARAM_VALUE.Stream9UseTs_g}
}

proc update_MODELPARAM_VALUE.Stream10Width_g { MODELPARAM_VALUE.Stream10Width_g PARAM_VALUE.Stream10Width_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream10Width_g}] ${MODELPARAM_VALUE.Stream10Width_g}
}

proc update_MODELPARAM_VALUE.Stream10Prio_g { MODELPARAM_VALUE.Stream10Prio_g PARAM_VALUE.Stream10Prio_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream10Prio_g}] ${MODELPARAM_VALUE.Stream10Prio_g}
}

proc update_MODELPARAM_VALUE.Stream10Buffer_g { MODELPARAM_VALUE.Stream10Buffer_g PARAM_VALUE.Stream10Buffer_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream10Buffer_g}] ${MODELPARAM_VALUE.Stream10Buffer_g}
}

proc update_MODELPARAM_VALUE.Stream10TimeoutUs_g { MODELPARAM_VALUE.Stream10TimeoutUs_g PARAM_VALUE.Stream10TimeoutUs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream10TimeoutUs_g}] ${MODELPARAM_VALUE.Stream10TimeoutUs_g}
}

proc update_MODELPARAM_VALUE.Stream10ClkFreqHz_g { MODELPARAM_VALUE.Stream10ClkFreqHz_g PARAM_VALUE.Stream10ClkFreqHz_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream10ClkFreqHz_g}] ${MODELPARAM_VALUE.Stream10ClkFreqHz_g}
}

proc update_MODELPARAM_VALUE.Stream10TsFifoDepth_g { MODELPARAM_VALUE.Stream10TsFifoDepth_g PARAM_VALUE.Stream10TsFifoDepth_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream10TsFifoDepth_g}] ${MODELPARAM_VALUE.Stream10TsFifoDepth_g}
}

proc update_MODELPARAM_VALUE.Stream10UseTs_g { MODELPARAM_VALUE.Stream10UseTs_g PARAM_VALUE.Stream10UseTs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream10UseTs_g}] ${MODELPARAM_VALUE.Stream10UseTs_g}
}

proc update_MODELPARAM_VALUE.Stream11Width_g { MODELPARAM_VALUE.Stream11Width_g PARAM_VALUE.Stream11Width_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream11Width_g}] ${MODELPARAM_VALUE.Stream11Width_g}
}

proc update_MODELPARAM_VALUE.Stream11Prio_g { MODELPARAM_VALUE.Stream11Prio_g PARAM_VALUE.Stream11Prio_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream11Prio_g}] ${MODELPARAM_VALUE.Stream11Prio_g}
}

proc update_MODELPARAM_VALUE.Stream11Buffer_g { MODELPARAM_VALUE.Stream11Buffer_g PARAM_VALUE.Stream11Buffer_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream11Buffer_g}] ${MODELPARAM_VALUE.Stream11Buffer_g}
}

proc update_MODELPARAM_VALUE.Stream11TimeoutUs_g { MODELPARAM_VALUE.Stream11TimeoutUs_g PARAM_VALUE.Stream11TimeoutUs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream11TimeoutUs_g}] ${MODELPARAM_VALUE.Stream11TimeoutUs_g}
}

proc update_MODELPARAM_VALUE.Stream11ClkFreqHz_g { MODELPARAM_VALUE.Stream11ClkFreqHz_g PARAM_VALUE.Stream11ClkFreqHz_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream11ClkFreqHz_g}] ${MODELPARAM_VALUE.Stream11ClkFreqHz_g}
}

proc update_MODELPARAM_VALUE.Stream11TsFifoDepth_g { MODELPARAM_VALUE.Stream11TsFifoDepth_g PARAM_VALUE.Stream11TsFifoDepth_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream11TsFifoDepth_g}] ${MODELPARAM_VALUE.Stream11TsFifoDepth_g}
}

proc update_MODELPARAM_VALUE.Stream11UseTs_g { MODELPARAM_VALUE.Stream11UseTs_g PARAM_VALUE.Stream11UseTs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream11UseTs_g}] ${MODELPARAM_VALUE.Stream11UseTs_g}
}

proc update_MODELPARAM_VALUE.Stream12Width_g { MODELPARAM_VALUE.Stream12Width_g PARAM_VALUE.Stream12Width_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream12Width_g}] ${MODELPARAM_VALUE.Stream12Width_g}
}

proc update_MODELPARAM_VALUE.Stream12Prio_g { MODELPARAM_VALUE.Stream12Prio_g PARAM_VALUE.Stream12Prio_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream12Prio_g}] ${MODELPARAM_VALUE.Stream12Prio_g}
}

proc update_MODELPARAM_VALUE.Stream12Buffer_g { MODELPARAM_VALUE.Stream12Buffer_g PARAM_VALUE.Stream12Buffer_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream12Buffer_g}] ${MODELPARAM_VALUE.Stream12Buffer_g}
}

proc update_MODELPARAM_VALUE.Stream12TimeoutUs_g { MODELPARAM_VALUE.Stream12TimeoutUs_g PARAM_VALUE.Stream12TimeoutUs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream12TimeoutUs_g}] ${MODELPARAM_VALUE.Stream12TimeoutUs_g}
}

proc update_MODELPARAM_VALUE.Stream12ClkFreqHz_g { MODELPARAM_VALUE.Stream12ClkFreqHz_g PARAM_VALUE.Stream12ClkFreqHz_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream12ClkFreqHz_g}] ${MODELPARAM_VALUE.Stream12ClkFreqHz_g}
}

proc update_MODELPARAM_VALUE.Stream12TsFifoDepth_g { MODELPARAM_VALUE.Stream12TsFifoDepth_g PARAM_VALUE.Stream12TsFifoDepth_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream12TsFifoDepth_g}] ${MODELPARAM_VALUE.Stream12TsFifoDepth_g}
}

proc update_MODELPARAM_VALUE.Stream12UseTs_g { MODELPARAM_VALUE.Stream12UseTs_g PARAM_VALUE.Stream12UseTs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream12UseTs_g}] ${MODELPARAM_VALUE.Stream12UseTs_g}
}

proc update_MODELPARAM_VALUE.Stream13Width_g { MODELPARAM_VALUE.Stream13Width_g PARAM_VALUE.Stream13Width_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream13Width_g}] ${MODELPARAM_VALUE.Stream13Width_g}
}

proc update_MODELPARAM_VALUE.Stream13Prio_g { MODELPARAM_VALUE.Stream13Prio_g PARAM_VALUE.Stream13Prio_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream13Prio_g}] ${MODELPARAM_VALUE.Stream13Prio_g}
}

proc update_MODELPARAM_VALUE.Stream13Buffer_g { MODELPARAM_VALUE.Stream13Buffer_g PARAM_VALUE.Stream13Buffer_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream13Buffer_g}] ${MODELPARAM_VALUE.Stream13Buffer_g}
}

proc update_MODELPARAM_VALUE.Stream13TimeoutUs_g { MODELPARAM_VALUE.Stream13TimeoutUs_g PARAM_VALUE.Stream13TimeoutUs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream13TimeoutUs_g}] ${MODELPARAM_VALUE.Stream13TimeoutUs_g}
}

proc update_MODELPARAM_VALUE.Stream13ClkFreqHz_g { MODELPARAM_VALUE.Stream13ClkFreqHz_g PARAM_VALUE.Stream13ClkFreqHz_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream13ClkFreqHz_g}] ${MODELPARAM_VALUE.Stream13ClkFreqHz_g}
}

proc update_MODELPARAM_VALUE.Stream13TsFifoDepth_g { MODELPARAM_VALUE.Stream13TsFifoDepth_g PARAM_VALUE.Stream13TsFifoDepth_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream13TsFifoDepth_g}] ${MODELPARAM_VALUE.Stream13TsFifoDepth_g}
}

proc update_MODELPARAM_VALUE.Stream13UseTs_g { MODELPARAM_VALUE.Stream13UseTs_g PARAM_VALUE.Stream13UseTs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream13UseTs_g}] ${MODELPARAM_VALUE.Stream13UseTs_g}
}

proc update_MODELPARAM_VALUE.Stream14Width_g { MODELPARAM_VALUE.Stream14Width_g PARAM_VALUE.Stream14Width_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream14Width_g}] ${MODELPARAM_VALUE.Stream14Width_g}
}

proc update_MODELPARAM_VALUE.Stream14Prio_g { MODELPARAM_VALUE.Stream14Prio_g PARAM_VALUE.Stream14Prio_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream14Prio_g}] ${MODELPARAM_VALUE.Stream14Prio_g}
}

proc update_MODELPARAM_VALUE.Stream14Buffer_g { MODELPARAM_VALUE.Stream14Buffer_g PARAM_VALUE.Stream14Buffer_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream14Buffer_g}] ${MODELPARAM_VALUE.Stream14Buffer_g}
}

proc update_MODELPARAM_VALUE.Stream14TimeoutUs_g { MODELPARAM_VALUE.Stream14TimeoutUs_g PARAM_VALUE.Stream14TimeoutUs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream14TimeoutUs_g}] ${MODELPARAM_VALUE.Stream14TimeoutUs_g}
}

proc update_MODELPARAM_VALUE.Stream14ClkFreqHz_g { MODELPARAM_VALUE.Stream14ClkFreqHz_g PARAM_VALUE.Stream14ClkFreqHz_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream14ClkFreqHz_g}] ${MODELPARAM_VALUE.Stream14ClkFreqHz_g}
}

proc update_MODELPARAM_VALUE.Stream14TsFifoDepth_g { MODELPARAM_VALUE.Stream14TsFifoDepth_g PARAM_VALUE.Stream14TsFifoDepth_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream14TsFifoDepth_g}] ${MODELPARAM_VALUE.Stream14TsFifoDepth_g}
}

proc update_MODELPARAM_VALUE.Stream14UseTs_g { MODELPARAM_VALUE.Stream14UseTs_g PARAM_VALUE.Stream14UseTs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream14UseTs_g}] ${MODELPARAM_VALUE.Stream14UseTs_g}
}

proc update_MODELPARAM_VALUE.Stream15Width_g { MODELPARAM_VALUE.Stream15Width_g PARAM_VALUE.Stream15Width_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream15Width_g}] ${MODELPARAM_VALUE.Stream15Width_g}
}

proc update_MODELPARAM_VALUE.Stream15Prio_g { MODELPARAM_VALUE.Stream15Prio_g PARAM_VALUE.Stream15Prio_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream15Prio_g}] ${MODELPARAM_VALUE.Stream15Prio_g}
}

proc update_MODELPARAM_VALUE.Stream15Buffer_g { MODELPARAM_VALUE.Stream15Buffer_g PARAM_VALUE.Stream15Buffer_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream15Buffer_g}] ${MODELPARAM_VALUE.Stream15Buffer_g}
}

proc update_MODELPARAM_VALUE.Stream15TimeoutUs_g { MODELPARAM_VALUE.Stream15TimeoutUs_g PARAM_VALUE.Stream15TimeoutUs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream15TimeoutUs_g}] ${MODELPARAM_VALUE.Stream15TimeoutUs_g}
}

proc update_MODELPARAM_VALUE.Stream15ClkFreqHz_g { MODELPARAM_VALUE.Stream15ClkFreqHz_g PARAM_VALUE.Stream15ClkFreqHz_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream15ClkFreqHz_g}] ${MODELPARAM_VALUE.Stream15ClkFreqHz_g}
}

proc update_MODELPARAM_VALUE.Stream15TsFifoDepth_g { MODELPARAM_VALUE.Stream15TsFifoDepth_g PARAM_VALUE.Stream15TsFifoDepth_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream15TsFifoDepth_g}] ${MODELPARAM_VALUE.Stream15TsFifoDepth_g}
}

proc update_MODELPARAM_VALUE.Stream15UseTs_g { MODELPARAM_VALUE.Stream15UseTs_g PARAM_VALUE.Stream15UseTs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Stream15UseTs_g}] ${MODELPARAM_VALUE.Stream15UseTs_g}
}

proc update_MODELPARAM_VALUE.C_S_Axi_ID_WIDTH { MODELPARAM_VALUE.C_S_Axi_ID_WIDTH PARAM_VALUE.C_S_Axi_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_Axi_ID_WIDTH}] ${MODELPARAM_VALUE.C_S_Axi_ID_WIDTH}
}

