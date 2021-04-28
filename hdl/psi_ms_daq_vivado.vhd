------------------------------------------------------------------------------
--  Copyright (c) 2019 by Paul Scherrer Institute, Switzerland
--  All rights reserved.
--  Authors: Oliver Bruendler
------------------------------------------------------------------------------

------------------------------------------------------------------------------
-- Libraries
------------------------------------------------------------------------------

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;
	
library work;
	use work.psi_common_array_pkg.all;


------------------------------------------------------------------------------
-- Entity
------------------------------------------------------------------------------	
entity psi_ms_daq_vivado is
	generic (
		-- General Config
		Streams_g				: positive range 1 to 32		:= 3;
		TsPerStream_g			: boolean						:= false;
		-- Recording
		MaxWindows_g			: positive range 1 to 32		:= 16;
		MinBurstSize_g			: integer range 1 to 512		:= 16;
		MaxBurstSize_g			: integer range 1 to 512		:= 256;
		-- Axi
		AxiDataWidth_g			: natural range 64 to 1024		:= 512;
		AxiMaxBurstBeats_g		: integer range 1 to 256		:= 4;
		AxiMaxOpenTrasactions_g	: natural range 1 to 8			:= 8;
		AxiFifoDepth_g			: natural						:= 1024;		
		-- Streams
		Stream0Width_g			: integer range 8 to 512			:= 32;
		Stream0Prio_g			: integer range 1 to 3			:= 2;
		Stream0Buffer_g			: integer 						:= 256;
		Stream0TimeoutUs_g		: integer						:= 1e3;		-- in microseconds
		Stream0ClkFreqHz_g		: integer						:= 100e6;
		Stream0TsFifoDepth_g	: integer						:= 16;
		Stream0UseTs_g			: boolean						:= true;

		Stream1Width_g			: integer range 8 to 512			:= 32;
		Stream1Prio_g			: integer range 1 to 3			:= 2;
		Stream1Buffer_g			: integer 						:= 256;
		Stream1TimeoutUs_g		: integer						:= 1e3;		-- in microseconds
		Stream1ClkFreqHz_g		: integer						:= 100e6;
		Stream1TsFifoDepth_g	: integer						:= 16;
		Stream1UseTs_g			: boolean						:= true;

		Stream2Width_g			: integer range 8 to 512			:= 32;
		Stream2Prio_g			: integer range 1 to 3			:= 2;
		Stream2Buffer_g			: integer 						:= 256;
		Stream2TimeoutUs_g		: integer						:= 1e3;		-- in microseconds
		Stream2ClkFreqHz_g		: integer						:= 100e6;
		Stream2TsFifoDepth_g	: integer						:= 16;
		Stream2UseTs_g			: boolean						:= true;

		Stream3Width_g			: integer range 8 to 512			:= 32;
		Stream3Prio_g			: integer range 1 to 3			:= 2;
		Stream3Buffer_g			: integer 						:= 256;
		Stream3TimeoutUs_g		: integer						:= 1e3;		-- in microseconds
		Stream3ClkFreqHz_g		: integer						:= 100e6;
		Stream3TsFifoDepth_g	: integer						:= 16;
		Stream3UseTs_g			: boolean						:= true;

		Stream4Width_g			: integer range 8 to 512			:= 32;
		Stream4Prio_g			: integer range 1 to 3			:= 2;
		Stream4Buffer_g			: integer 						:= 256;
		Stream4TimeoutUs_g		: integer						:= 1e3;		-- in microseconds
		Stream4ClkFreqHz_g		: integer						:= 100e6;
		Stream4TsFifoDepth_g	: integer						:= 16;
		Stream4UseTs_g			: boolean						:= true;

		Stream5Width_g			: integer range 8 to 512			:= 32;
		Stream5Prio_g			: integer range 1 to 3			:= 2;
		Stream5Buffer_g			: integer 						:= 256;
		Stream5TimeoutUs_g		: integer						:= 1e3;		-- in microseconds
		Stream5ClkFreqHz_g		: integer						:= 100e6;
		Stream5TsFifoDepth_g	: integer						:= 16;
		Stream5UseTs_g			: boolean						:= true;		

		Stream6Width_g			: integer range 8 to 512			:= 32;
		Stream6Prio_g			: integer range 1 to 3			:= 2;
		Stream6Buffer_g			: integer 						:= 256;
		Stream6TimeoutUs_g		: integer						:= 1e3;		-- in microseconds
		Stream6ClkFreqHz_g		: integer						:= 100e6;
		Stream6TsFifoDepth_g	: integer						:= 16;
		Stream6UseTs_g			: boolean						:= true;	
		
		Stream7Width_g			: integer range 8 to 512			:= 32;
		Stream7Prio_g			: integer range 1 to 3			:= 2;
		Stream7Buffer_g			: integer 						:= 256;
		Stream7TimeoutUs_g		: integer						:= 1e3;		-- in microseconds
		Stream7ClkFreqHz_g		: integer						:= 100e6;
		Stream7TsFifoDepth_g	: integer						:= 16;
		Stream7UseTs_g			: boolean						:= true;	
		
		Stream8Width_g			: integer range 8 to 512			:= 32;
		Stream8Prio_g			: integer range 1 to 3			:= 2;
		Stream8Buffer_g			: integer 						:= 256;
		Stream8TimeoutUs_g		: integer						:= 1e3;		-- in microseconds
		Stream8ClkFreqHz_g		: integer						:= 100e6;
		Stream8TsFifoDepth_g	: integer						:= 16;
		Stream8UseTs_g			: boolean						:= true;	
		
		Stream9Width_g			: integer range 8 to 512			:= 32;
		Stream9Prio_g			: integer range 1 to 3			:= 2;
		Stream9Buffer_g			: integer 						:= 256;
		Stream9TimeoutUs_g		: integer						:= 1e3;		-- in microseconds
		Stream9ClkFreqHz_g		: integer						:= 100e6;
		Stream9TsFifoDepth_g	: integer						:= 16;
		Stream9UseTs_g			: boolean						:= true;	
		
		Stream10Width_g			: integer range 8 to 512			:= 32;
		Stream10Prio_g			: integer range 1 to 3			:= 2;
		Stream10Buffer_g		: integer 						:= 256;
		Stream10TimeoutUs_g		: integer						:= 1e3;		-- in microseconds
		Stream10ClkFreqHz_g		: integer						:= 100e6;
		Stream10TsFifoDepth_g	: integer						:= 16;
		Stream10UseTs_g			: boolean						:= true;	
		
		Stream11Width_g			: integer range 8 to 512			:= 32;
		Stream11Prio_g			: integer range 1 to 3			:= 2;
		Stream11Buffer_g		: integer 						:= 256;
		Stream11TimeoutUs_g		: integer						:= 1e3;		-- in microseconds
		Stream11ClkFreqHz_g		: integer						:= 100e6;
		Stream11TsFifoDepth_g	: integer						:= 16;
		Stream11UseTs_g			: boolean						:= true;	
		
		Stream12Width_g			: integer range 8 to 512			:= 32;
		Stream12Prio_g			: integer range 1 to 3			:= 2;
		Stream12Buffer_g		: integer 						:= 256;
		Stream12TimeoutUs_g		: integer						:= 1e3;		-- in microseconds
		Stream12ClkFreqHz_g		: integer						:= 100e6;
		Stream12TsFifoDepth_g	: integer						:= 16;
		Stream12UseTs_g			: boolean						:= true;

		Stream13Width_g			: integer range 8 to 512			:= 32;
		Stream13Prio_g			: integer range 1 to 3			:= 2;
		Stream13Buffer_g		: integer 						:= 256;
		Stream13TimeoutUs_g		: integer						:= 1e3;		-- in microseconds
		Stream13ClkFreqHz_g		: integer						:= 100e6;
		Stream13TsFifoDepth_g	: integer						:= 16;
		Stream13UseTs_g			: boolean						:= true;

		Stream14Width_g			: integer range 8 to 512			:= 32;
		Stream14Prio_g			: integer range 1 to 3			:= 2;
		Stream14Buffer_g		: integer 						:= 256;
		Stream14TimeoutUs_g		: integer						:= 1e3;		-- in microseconds	
		Stream14ClkFreqHz_g		: integer						:= 100e6;
		Stream14TsFifoDepth_g	: integer						:= 16;
		Stream14UseTs_g			: boolean						:= true;

		Stream15Width_g			: integer range 8 to 512			:= 32;
		Stream15Prio_g			: integer range 1 to 3			:= 2;
		Stream15Buffer_g		: integer 						:= 256;
		Stream15TimeoutUs_g		: integer						:= 1e3;		-- in microseconds
		Stream15ClkFreqHz_g		: integer						:= 100e6;
		Stream15TsFifoDepth_g	: integer						:= 16;
		Stream15UseTs_g			: boolean						:= true;
		
		-- Vivado BD Constants
		C_S_Axi_ID_WIDTH		: integer						:= 0
	);
	port (
		-- AXI Slave Interface for Register Access
		S_Axi_Aclk		: in	std_logic;
		S_Axi_ArId		: in	std_logic_vector(C_S_Axi_ID_WIDTH-1 downto 0);
		S_Axi_Aresetn	: in	std_logic;
		S_Axi_ArAddr	: in	std_logic_vector(15 downto 0);
		S_Axi_Arlen		: in	std_logic_vector(7 downto 0);
		S_Axi_ArSize	: in	std_logic_vector(2 downto 0);
		S_Axi_ArBurst	: in	std_logic_vector(1 downto 0);
		S_Axi_ArLock	: in	std_logic;
		S_Axi_ArCache	: in	std_logic_vector(3 downto 0);
		S_Axi_ArProt	: in	std_logic_vector(2 downto 0);
		S_Axi_ArValid	: in	std_logic;
		S_Axi_ArReady	: out	std_logic;
		S_Axi_RId		: out	std_logic_vector(C_S_Axi_ID_WIDTH-1 downto 0);
		S_Axi_RData		: out	std_logic_vector(31 downto 0);
		S_Axi_RResp		: out	std_logic_vector(1 downto 0);
		S_Axi_RLast		: out	std_logic;
		S_Axi_RValid	: out	std_logic;
		S_Axi_RReady	: in	std_logic;
		S_Axi_AwId		: in	std_logic_vector(C_S_Axi_ID_WIDTH-1 downto 0);
		S_Axi_AwAddr	: in	std_logic_vector(15 downto 0);
		S_Axi_AwLen		: in	std_logic_vector(7 downto 0);
		S_Axi_AwSize	: in	std_logic_vector(2 downto 0);
		S_Axi_AwBurst	: in	std_logic_vector(1 downto 0);
		S_Axi_AwLock	: in	std_logic;
		S_Axi_AwCache	: in	std_logic_vector(3 downto 0);
		S_Axi_AwProt	: in	std_logic_vector(2 downto 0);
		S_Axi_AwValid	: in	std_logic;
		S_Axi_AwReady	: out	std_logic;
		S_Axi_WData		: in	std_logic_vector(31	downto 0);
		S_Axi_WStrb		: in	std_logic_vector(3 downto 0);
		S_Axi_WLast		: in	std_logic;
		S_Axi_WValid	: in	std_logic;
		S_Axi_WReady	: out	std_logic;
		S_Axi_BId		: out	std_logic_vector(C_S_Axi_ID_WIDTH-1 downto 0);
		S_Axi_BResp		: out	std_logic_vector(1 downto 0);
		S_Axi_BValid	: out	std_logic;
		S_Axi_BReady	: in	std_logic;		
		
		-- AXI Master Interface for Memory Access
		M_Axi_Aclk		: in	std_logic;
		M_Axi_Aresetn	: in	std_logic;
		M_Axi_AwAddr	: out	std_logic_vector(31 downto 0);									
		M_Axi_AwLen		: out	std_logic_vector(7 downto 0);													
		M_Axi_AwSize	: out	std_logic_vector(2 downto 0);													
		M_Axi_AwBurst	: out	std_logic_vector(1 downto 0);													
		M_Axi_AwLock	: out	std_logic;																		
		M_Axi_AwCache	: out	std_logic_vector(3 downto 0);													
		M_Axi_AwProt	: out	std_logic_vector(2 downto 0);													
		M_Axi_AwValid	: out	std_logic;                                                  					
		M_Axi_AwReady	: in	std_logic                                             	:= '0';			     	                                                      					
		M_Axi_WData		: out	std_logic_vector(AxiDataWidth_g-1 downto 0);                					
		M_Axi_WStrb		: out	std_logic_vector(AxiDataWidth_g/8-1 downto 0);              					
		M_Axi_WLast		: out	std_logic;                                                  					
		M_Axi_WValid	: out	std_logic;                                                  					
		M_Axi_WReady	: in	std_logic                                              := '0';				                                                         
		M_Axi_BResp		: in	std_logic_vector(1 downto 0)                           := (others => '0');	    
		M_Axi_BValid	: in	std_logic                                              := '0';				    
		M_Axi_BReady	: out	std_logic;                                                  					                                            
		M_Axi_ArAddr	: out	std_logic_vector(31 downto 0);                					
		M_Axi_ArLen		: out	std_logic_vector(7 downto 0);                               					
		M_Axi_ArSize	: out	std_logic_vector(2 downto 0);                               					
		M_Axi_ArBurst	: out	std_logic_vector(1 downto 0);                               					
		M_Axi_ArLock	: out	std_logic;                                                  					
		M_Axi_ArCache	: out	std_logic_vector(3 downto 0);                               					
		M_Axi_ArProt	: out	std_logic_vector(2 downto 0);                               					
		M_Axi_ArValid	: out	std_logic;                                                  					
		M_Axi_ArReady	: in	std_logic                                           	:= '0';					                                                   
		M_Axi_RData		: in	std_logic_vector(AxiDataWidth_g-1 downto 0)             := (others => '0');    	
		M_Axi_RResp		: in	std_logic_vector(1 downto 0)                            := (others => '0');	    
		M_Axi_RLast		: in	std_logic                                               := '0';				    
		M_Axi_RValid	: in	std_logic                                               := '0';				    
		M_Axi_RReady	: out	std_logic;
		
		-- Miscellaneous
		Irq				: out	std_logic;		
		Trig			: in	std_logic_vector(Streams_g-1 downto 0);
		StrX_Ts			: in	std_logic_vector(63 downto 0);
		
		-- Data Streams Input
		Str00_Clk		: in	std_logic;
		Str00_TData		: in	std_logic_vector(Stream0Width_g-1 downto 0);
		Str00_Ts		: in	std_logic_vector(63 downto 0);
		Str00_TValid	: in	std_logic;
		Str00_TReady	: out	std_logic;

		Str01_Clk		: in	std_logic;
		Str01_TData		: in	std_logic_vector(Stream1Width_g-1 downto 0);
		Str01_Ts		: in	std_logic_vector(63 downto 0);
		Str01_TValid	: in	std_logic;
		Str01_TReady	: out	std_logic;

		Str02_Clk		: in	std_logic;
		Str02_TData		: in	std_logic_vector(Stream2Width_g-1 downto 0);
		Str02_Ts		: in	std_logic_vector(63 downto 0);
		Str02_TValid	: in	std_logic;
		Str02_TReady	: out	std_logic;

		Str03_Clk		: in	std_logic;
		Str03_TData		: in	std_logic_vector(Stream3Width_g-1 downto 0);
		Str03_Ts		: in	std_logic_vector(63 downto 0);
		Str03_TValid	: in	std_logic;
		Str03_TReady	: out	std_logic;

		Str04_Clk		: in	std_logic;
		Str04_TData		: in	std_logic_vector(Stream4Width_g-1 downto 0);
		Str04_Ts		: in	std_logic_vector(63 downto 0);
		Str04_TValid	: in	std_logic;
		Str04_TReady	: out	std_logic;

		Str05_Clk		: in	std_logic;
		Str05_TData		: in	std_logic_vector(Stream5Width_g-1 downto 0);
		Str05_Ts		: in	std_logic_vector(63 downto 0);
		Str05_TValid	: in	std_logic;
		Str05_TReady	: out	std_logic;

		Str06_Clk		: in	std_logic;
		Str06_TData		: in	std_logic_vector(Stream6Width_g-1 downto 0);
		Str06_Ts		: in	std_logic_vector(63 downto 0);
		Str06_TValid	: in	std_logic;
		Str06_TReady	: out	std_logic;

		Str07_Clk		: in	std_logic;
		Str07_TData		: in	std_logic_vector(Stream7Width_g-1 downto 0);
		Str07_Ts		: in	std_logic_vector(63 downto 0);
		Str07_TValid	: in	std_logic;
		Str07_TReady	: out	std_logic;

		Str08_Clk		: in	std_logic;
		Str08_TData		: in	std_logic_vector(Stream8Width_g-1 downto 0);
		Str08_Ts		: in	std_logic_vector(63 downto 0);
		Str08_TValid	: in	std_logic;
		Str08_TReady	: out	std_logic;

		Str09_Clk		: in	std_logic;
		Str09_TData		: in	std_logic_vector(Stream9Width_g-1 downto 0);
		Str09_Ts		: in	std_logic_vector(63 downto 0);
		Str09_TValid	: in	std_logic;
		Str09_TReady	: out	std_logic;

		Str10_Clk		: in	std_logic;
		Str10_TData		: in	std_logic_vector(Stream10Width_g-1 downto 0);
		Str10_Ts		: in	std_logic_vector(63 downto 0);
		Str10_TValid	: in	std_logic;
		Str10_TReady	: out	std_logic;

		Str11_Clk		: in	std_logic;
		Str11_TData		: in	std_logic_vector(Stream11Width_g-1 downto 0);
		Str11_Ts		: in	std_logic_vector(63 downto 0);
		Str11_TValid	: in	std_logic;
		Str11_TReady	: out	std_logic;

		Str12_Clk		: in	std_logic;
		Str12_TData		: in	std_logic_vector(Stream12Width_g-1 downto 0);
		Str12_Ts		: in	std_logic_vector(63 downto 0);
		Str12_TValid	: in	std_logic;
		Str12_TReady	: out	std_logic;

		Str13_Clk		: in	std_logic;
		Str13_TData		: in	std_logic_vector(Stream13Width_g-1 downto 0);
		Str13_Ts		: in	std_logic_vector(63 downto 0);
		Str13_TValid	: in	std_logic;
		Str13_TReady	: out	std_logic;

		Str14_Clk		: in	std_logic;
		Str14_TData		: in	std_logic_vector(Stream14Width_g-1 downto 0);
		Str14_Ts		: in	std_logic_vector(63 downto 0);
		Str14_TValid	: in	std_logic;
		Str14_TReady	: out	std_logic;

		Str15_Clk		: in	std_logic;
		Str15_TData		: in	std_logic_vector(Stream15Width_g-1 downto 0);
		Str15_Ts		: in	std_logic_vector(63 downto 0);
		Str15_TValid	: in	std_logic;
		Str15_TReady	: out	std_logic
	);
end entity psi_ms_daq_vivado;

------------------------------------------------------------------------------
-- Architecture section
------------------------------------------------------------------------------

architecture rtl of psi_ms_daq_vivado is
	signal All_Clk	: std_logic_vector(0 to 15)	:= (others => '0');
	signal All_Data	: t_aslv512(0 to 15)			:= (others => (others => '0'));
	signal All_Ts	: t_aslv64(0 to 15)			:= (others => (others => '0'));
	signal All_Vld	: std_logic_vector(0 to 15)	:= (others => '0');
	signal All_Rdy	: std_logic_vector(0 to 15)	:= (others => '0');
	signal Str_Clk	: std_logic_vector(Streams_g-1 downto 0);
	signal Str_Data	: t_aslv512(Streams_g-1 downto 0);
	signal Str_Ts	: t_aslv64(Streams_g-1 downto 0);
	signal Str_Vld	: std_logic_vector(Streams_g-1 downto 0);
	signal Str_Rdy	: std_logic_vector(Streams_g-1 downto 0);
	
	constant TimeoutUs_c	: t_ainteger	:= (
		Stream0TimeoutUs_g, 	Stream1TimeoutUs_g, 	Stream2TimeoutUs_g, 	Stream3TimeoutUs_g,
		Stream4TimeoutUs_g, 	Stream5TimeoutUs_g, 	Stream6TimeoutUs_g, 	Stream7TimeoutUs_g,
		Stream8TimeoutUs_g, 	Stream9TimeoutUs_g, 	Stream10TimeoutUs_g, 	Stream11TimeoutUs_g,
		Stream12TimeoutUs_g, 	Stream13TimeoutUs_g, 	Stream14TimeoutUs_g, 	Stream15TimeoutUs_g
	);
	
	
	function TimeoutsSec_c return t_areal is
		variable v : t_areal(0 to Streams_g-1);
	begin
		for i in 0 to Streams_g-1 loop
			v(i)	:= real(TimeoutUs_c(i))/1.0e6;
		end loop;
		return v;
	end function;
	
	constant FreqHz_c	: t_ainteger := (
		Stream0ClkFreqHz_g,		Stream1ClkFreqHz_g,		Stream2ClkFreqHz_g,		Stream3ClkFreqHz_g,
		Stream4ClkFreqHz_g,		Stream5ClkFreqHz_g,		Stream6ClkFreqHz_g,		Stream7ClkFreqHz_g,
		Stream8ClkFreqHz_g,		Stream9ClkFreqHz_g,		Stream10ClkFreqHz_g,	Stream11ClkFreqHz_g,
		Stream12ClkFreqHz_g,	Stream13ClkFreqHz_g,	Stream14ClkFreqHz_g,	Stream15ClkFreqHz_g
	);
	
	function FreqReal_c	return t_areal is
		variable v : t_areal(0 to Streams_g-1);
	begin
		for i in 0 to Streams_g-1 loop
			v(i)	:= real(FreqHz_c(i));
		end loop;
		return v;		
	end function;
	

begin
	All_Clk(0)									<= Str00_Clk;
	All_Data(0)(Stream0Width_g-1 downto 0)		<= Str00_TData;
	All_Ts(0)									<= Str00_Ts;
	All_Vld(0)									<= Str00_TValid;
	Str00_TReady								<= All_Rdy(0);
	
	All_Clk(1)									<= Str01_Clk;
	All_Data(1)(Stream1Width_g-1 downto 0)		<= Str01_TData;
	All_Ts(1)									<= Str01_Ts;
	All_Vld(1)									<= Str01_TValid;
	Str01_TReady								<= All_Rdy(1);

	All_Clk(2)									<= Str02_Clk;
	All_Data(2)(Stream2Width_g-1 downto 0)		<= Str02_TData;
	All_Ts(2)									<= Str02_Ts;
	All_Vld(2)									<= Str02_TValid;
	Str02_TReady								<= All_Rdy(2);

	All_Clk(3)									<= Str03_Clk;
	All_Data(3)(Stream3Width_g-1 downto 0)		<= Str03_TData;
	All_Ts(3)									<= Str03_Ts;
	All_Vld(3)									<= Str03_TValid;
	Str03_TReady								<= All_Rdy(3);

	All_Clk(4)									<= Str04_Clk;
	All_Data(4)(Stream4Width_g-1 downto 0)		<= Str04_TData;
	All_Ts(4)									<= Str04_Ts;
	All_Vld(4)									<= Str04_TValid;
	Str04_TReady								<= All_Rdy(4);

	All_Clk(5)									<= Str05_Clk;
	All_Data(5)(Stream5Width_g-1 downto 0)		<= Str05_TData;
	All_Ts(5)									<= Str05_Ts;
	All_Vld(5)									<= Str05_TValid;
	Str05_TReady								<= All_Rdy(5);

	All_Clk(6)									<= Str06_Clk;
	All_Data(6)(Stream6Width_g-1 downto 0)		<= Str06_TData;
	All_Ts(6)									<= Str06_Ts;
	All_Vld(6)									<= Str06_TValid;
	Str06_TReady								<= All_Rdy(6);

	All_Clk(7)									<= Str07_Clk;
	All_Data(7)(Stream7Width_g-1 downto 0)		<= Str07_TData;
	All_Ts(7)									<= Str07_Ts;
	All_Vld(7)									<= Str07_TValid;
	Str07_TReady								<= All_Rdy(7);

	All_Clk(8)									<= Str08_Clk;
	All_Data(8)(Stream8Width_g-1 downto 0)		<= Str08_TData;
	All_Ts(8)									<= Str08_Ts;
	All_Vld(8)									<= Str08_TValid;
	Str08_TReady								<= All_Rdy(8);

	All_Clk(9)									<= Str09_Clk;
	All_Data(9)(Stream9Width_g-1 downto 0)		<= Str09_TData;
	All_Ts(9)									<= Str09_Ts;
	All_Vld(9)									<= Str09_TValid;
	Str09_TReady								<= All_Rdy(9);

	All_Clk(10)									<= Str10_Clk;
	All_Data(10)(Stream10Width_g-1 downto 0)	<= Str10_TData;
	All_Ts(10)									<= Str10_Ts;
	All_Vld(10)									<= Str10_TValid;
	Str10_TReady								<= All_Rdy(10);

	All_Clk(11)									<= Str11_Clk;
	All_Data(11)(Stream11Width_g-1 downto 0)	<= Str11_TData;
	All_Ts(11)									<= Str11_Ts;
	All_Vld(11)									<= Str11_TValid;
	Str11_TReady								<= All_Rdy(11);

	All_Clk(12)									<= Str12_Clk;
	All_Data(12)(Stream12Width_g-1 downto 0)	<= Str12_TData;
	All_Ts(12)									<= Str12_Ts;
	All_Vld(12)									<= Str12_TValid;
	Str12_TReady								<= All_Rdy(12);

	All_Clk(13)									<= Str13_Clk;
	All_Data(13)(Stream13Width_g-1 downto 0)	<= Str13_TData;
	All_Ts(13)									<= Str13_Ts;
	All_Vld(13)									<= Str13_TValid;
	Str13_TReady								<= All_Rdy(13);

	All_Clk(14)									<= Str14_Clk;
	All_Data(14)(Stream14Width_g-1 downto 0)	<= Str14_TData;
	All_Ts(14)									<= Str14_Ts;
	All_Vld(14)									<= Str14_TValid;
	Str14_TReady								<= All_Rdy(14);

	All_Clk(15)									<= Str15_Clk;
	All_Data(15)(Stream15Width_g-1 downto 0)	<= Str15_TData;
	All_Ts(15)									<= Str15_Ts;
	All_Vld(15)									<= Str15_TValid;
	Str15_TReady								<= All_Rdy(15);	
	
	g_stream : for s in 0 to Streams_g-1 generate
		Str_Data(s)	<= All_Data(s);
		Str_Vld(s)	<= All_Vld(s);
		All_Rdy(s)	<= Str_Rdy(s);
		
		g_tsstr : if TsPerStream_g generate
			Str_Ts(s)	<= All_Ts(s);
		end generate;
		g_ntsstr : if not TsPerStream_g generate
			Str_Ts(s)	<= StrX_Ts;
		end generate;
		
		Str_Clk(s)	<= All_Clk(s);
	end generate;

	i_impl : entity work.psi_ms_daq_axi
		generic map (
			Streams_g				=> Streams_g,	
			StreamWidth_g			=> (Stream0Width_g, 		Stream1Width_g, 		Stream2Width_g, 		Stream3Width_g, 
										Stream4Width_g,			Stream5Width_g, 		Stream6Width_g, 		Stream7Width_g, 
										Stream8Width_g, 		Stream9Width_g, 		Stream10Width_g, 		Stream11Width_g,
										Stream12Width_g, 		Stream13Width_g, 		Stream14Width_g, 		Stream15Width_g),
			StreamPrio_g			=> (Stream0Prio_g, 			Stream1Prio_g, 			Stream2Prio_g, 			Stream3Prio_g,
										Stream4Prio_g, 			Stream5Prio_g, 			Stream6Prio_g, 			Stream7Prio_g,
										Stream8Prio_g, 			Stream9Prio_g, 			Stream10Prio_g, 		Stream11Prio_g,
										Stream12Prio_g, 		Stream13Prio_g, 		Stream14Prio_g, 		Stream15Prio_g),
			StreamBuffer_g			=> (Stream0Buffer_g, 		Stream1Buffer_g, 		Stream2Buffer_g, 		Stream3Buffer_g,
										Stream4Buffer_g, 		Stream5Buffer_g, 		Stream6Buffer_g, 		Stream7Buffer_g,
										Stream8Buffer_g, 		Stream9Buffer_g, 		Stream10Buffer_g, 		Stream11Buffer_g,
										Stream12Buffer_g, 		Stream13Buffer_g, 		Stream14Buffer_g, 		Stream15Buffer_g),
			StreamTimeout_g			=> TimeoutsSec_c,
			StreamClkFreq_g			=> FreqReal_c,
			StreamTsFifoDepth_g		=> (Stream0TsFifoDepth_g,	Stream1TsFifoDepth_g,	Stream2TsFifoDepth_g,	Stream3TsFifoDepth_g,
										Stream4TsFifoDepth_g,	Stream5TsFifoDepth_g,	Stream6TsFifoDepth_g,	Stream7TsFifoDepth_g,
										Stream8TsFifoDepth_g,	Stream9TsFifoDepth_g,	Stream10TsFifoDepth_g,	Stream11TsFifoDepth_g,
										Stream12TsFifoDepth_g,	Stream13TsFifoDepth_g,	Stream14TsFifoDepth_g,	Stream15TsFifoDepth_g),
			StreamUseTs_g			=> (Stream0UseTs_g,			Stream1UseTs_g,			Stream2UseTs_g,			Stream3UseTs_g,
										Stream4UseTs_g,			Stream5UseTs_g,			Stream6UseTs_g,			Stream7UseTs_g,
										Stream8UseTs_g,			Stream9UseTs_g,			Stream10UseTs_g,		Stream11UseTs_g,
										Stream12UseTs_g,		Stream13UseTs_g,		Stream14UseTs_g,		Stream15UseTs_g),
			MaxWindows_g			=> MaxWindows_g,
			MinBurstSize_g			=> MinBurstSize_g,
			MaxBurstSize_g			=> MaxBurstSize_g,
			AxiDataWidth_g			=> AxiDataWidth_g,
			AxiMaxBurstBeats_g		=> AxiMaxBurstBeats_g,
			AxiMaxOpenTrasactions_g	=> AxiMaxOpenTrasactions_g,
			AxiFifoDepth_g			=> AxiFifoDepth_g,
			AxiSlaveIdWidth_g		=> C_S_Axi_ID_WIDTH
		)
		port map (
			Str_Clk			=> Str_Clk,
			Str_Data		=> Str_Data,
			Str_Ts			=> Str_Ts,
			Str_Vld			=> Str_Vld,
			Str_Rdy			=> Str_Rdy,
			Str_Trig		=> Trig,
			Irq				=> Irq,		
			S_Axi_Aclk		=> S_Axi_Aclk,		
			S_Axi_Aresetn	=> S_Axi_Aresetn,
			S_Axi_ArId		=> S_Axi_ArId,
			S_Axi_ArAddr	=> S_Axi_ArAddr,	
			S_Axi_Arlen		=> S_Axi_Arlen,		
			S_Axi_ArSize	=> S_Axi_ArSize,	
			S_Axi_ArBurst	=> S_Axi_ArBurst,	
			S_Axi_ArLock	=> S_Axi_ArLock,	
			S_Axi_ArCache	=> S_Axi_ArCache,	
			S_Axi_ArProt	=> S_Axi_ArProt,	
			S_Axi_ArValid	=> S_Axi_ArValid,	
			S_Axi_ArReady	=> S_Axi_ArReady,
			S_Axi_RId		=> S_Axi_RId,
			S_Axi_RData		=> S_Axi_RData,		
			S_Axi_RResp		=> S_Axi_RResp,		
			S_Axi_RLast		=> S_Axi_RLast,		
			S_Axi_RValid	=> S_Axi_RValid,	
			S_Axi_RReady	=> S_Axi_RReady,
			S_Axi_AwId		=> S_Axi_AwId,
			S_Axi_AwAddr	=> S_Axi_AwAddr,	
			S_Axi_AwLen		=> S_Axi_AwLen,		
			S_Axi_AwSize	=> S_Axi_AwSize,	
			S_Axi_AwBurst	=> S_Axi_AwBurst,	
			S_Axi_AwLock	=> S_Axi_AwLock,	
			S_Axi_AwCache	=> S_Axi_AwCache,	
			S_Axi_AwProt	=> S_Axi_AwProt,	
			S_Axi_AwValid	=> S_Axi_AwValid,	
			S_Axi_AwReady	=> S_Axi_AwReady,	
			S_Axi_WData		=> S_Axi_WData,		
			S_Axi_WStrb		=> S_Axi_WStrb,		
			S_Axi_WLast		=> S_Axi_WLast,		
			S_Axi_WValid	=> S_Axi_WValid,	
			S_Axi_WReady	=> S_Axi_WReady,	
			S_Axi_BId		=> S_Axi_BId,
			S_Axi_BResp		=> S_Axi_BResp,		
			S_Axi_BValid	=> S_Axi_BValid,	
			S_Axi_BReady	=> S_Axi_BReady,	
			M_Axi_Aclk		=> M_Axi_Aclk,		
			M_Axi_Aresetn	=> M_Axi_Aresetn,	
			M_Axi_AwAddr	=> M_Axi_AwAddr,	
			M_Axi_AwLen		=> M_Axi_AwLen,		
			M_Axi_AwSize	=> M_Axi_AwSize,	
			M_Axi_AwBurst	=> M_Axi_AwBurst,	
			M_Axi_AwLock	=> M_Axi_AwLock,	
			M_Axi_AwCache	=> M_Axi_AwCache,	
			M_Axi_AwProt	=> M_Axi_AwProt,	
			M_Axi_AwValid	=> M_Axi_AwValid,	
			M_Axi_AwReady	=> M_Axi_AwReady,	                                                      					
			M_Axi_WData		=> M_Axi_WData,		
			M_Axi_WStrb		=> M_Axi_WStrb,		
			M_Axi_WLast		=> M_Axi_WLast,		
			M_Axi_WValid	=> M_Axi_WValid,	
			M_Axi_WReady	=> M_Axi_WReady,	                                                      
			M_Axi_BResp		=> M_Axi_BResp,		 
			M_Axi_BValid	=> M_Axi_BValid,	 
			M_Axi_BReady	=> M_Axi_BReady,	                                            
			M_Axi_ArAddr	=> M_Axi_ArAddr,	
			M_Axi_ArLen		=> M_Axi_ArLen,		
			M_Axi_ArSize	=> M_Axi_ArSize,	
			M_Axi_ArBurst	=> M_Axi_ArBurst,	
			M_Axi_ArLock	=> M_Axi_ArLock,	
			M_Axi_ArCache	=> M_Axi_ArCache,	
			M_Axi_ArProt	=> M_Axi_ArProt,	
			M_Axi_ArValid	=> M_Axi_ArValid,	
			M_Axi_ArReady	=> M_Axi_ArReady,	                                                   
			M_Axi_RData		=> M_Axi_RData,			
			M_Axi_RResp		=> M_Axi_RResp,		 
			M_Axi_RLast		=> M_Axi_RLast,		 
			M_Axi_RValid	=> M_Axi_RValid,	 
			M_Axi_RReady	=> M_Axi_RReady	
		);
  
end rtl;
