################################################################################
## Copyright© PSI
################################################################################


################################################################################
## Clock Corssings (maxdelay of 1 clock cycle of the faster clock)
################################################################################

# clk_axi (125 MHz) <-> clk_stream0 (142MHz), 1 faster clock cycles
set_max_delay -datapath_only -from clk_pl_0 -to clk_pl_1 7.000
set_max_delay -datapath_only -from clk_pl_1 -to clk_pl_0 7.000

# clk_axi (125 MHz) <-> clk_stream1 (111MHz), 1 faster clock cycles
set_max_delay -datapath_only -from clk_pl_0 -to clk_pl_2 8.000
set_max_delay -datapath_only -from clk_pl_2 -to clk_pl_0 8.000
