// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Jun 20 10:16:00 2019
// Host        : FREISMUTHDESK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/DEV/ESIF/Task2/ESIF_Task2/Subtask2/ESIFTask2_2.srcs/sources_1/bd/ESIFTask2_2_bd/ip/ESIFTask2_2_bd_pwmBlock_0_0/ESIFTask2_2_bd_pwmBlock_0_0_sim_netlist.v
// Design      : ESIFTask2_2_bd_pwmBlock_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ESIFTask2_2_bd_pwmBlock_0_0,pwmBlock,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "pwmBlock,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module ESIFTask2_2_bd_pwmBlock_0_0
   (thresh,
    clk,
    pwmOut);
  input [31:0]thresh;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN ESIFTask2_2_bd_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  output pwmOut;

  wire clk;
  wire pwmOut;
  wire [31:0]thresh;

  ESIFTask2_2_bd_pwmBlock_0_0_pwmBlock inst
       (.clk(clk),
        .pwmOut(pwmOut),
        .thresh(thresh[31:16]));
endmodule

(* ORIG_REF_NAME = "pwmBlock" *) 
module ESIFTask2_2_bd_pwmBlock_0_0_pwmBlock
   (pwmOut,
    clk,
    thresh);
  output pwmOut;
  input clk;
  input [15:0]thresh;

  wire clk;
  wire \counter[0]_i_2_n_0 ;
  wire [15:0]counter_reg;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[0]_i_1_n_1 ;
  wire \counter_reg[0]_i_1_n_2 ;
  wire \counter_reg[0]_i_1_n_3 ;
  wire \counter_reg[0]_i_1_n_4 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire p_0_in;
  wire pwmOut;
  wire pwmOut0_carry__0_i_1_n_0;
  wire pwmOut0_carry__0_i_2_n_0;
  wire pwmOut0_carry__0_i_3_n_0;
  wire pwmOut0_carry__0_i_4_n_0;
  wire pwmOut0_carry__0_i_5_n_0;
  wire pwmOut0_carry__0_i_6_n_0;
  wire pwmOut0_carry__0_i_7_n_0;
  wire pwmOut0_carry__0_i_8_n_0;
  wire pwmOut0_carry__0_n_1;
  wire pwmOut0_carry__0_n_2;
  wire pwmOut0_carry__0_n_3;
  wire pwmOut0_carry_i_1_n_0;
  wire pwmOut0_carry_i_2_n_0;
  wire pwmOut0_carry_i_3_n_0;
  wire pwmOut0_carry_i_4_n_0;
  wire pwmOut0_carry_i_5_n_0;
  wire pwmOut0_carry_i_6_n_0;
  wire pwmOut0_carry_i_7_n_0;
  wire pwmOut0_carry_i_8_n_0;
  wire pwmOut0_carry_n_0;
  wire pwmOut0_carry_n_1;
  wire pwmOut0_carry_n_2;
  wire pwmOut0_carry_n_3;
  wire [15:0]thresh;
  wire [3:3]\NLW_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_pwmOut0_carry_O_UNCONNECTED;
  wire [3:0]NLW_pwmOut0_carry__0_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_2 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_7 ),
        .Q(counter_reg[0]),
        .R(1'b0));
  CARRY4 \counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_1_n_0 ,\counter_reg[0]_i_1_n_1 ,\counter_reg[0]_i_1_n_2 ,\counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_1_n_4 ,\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 }),
        .S({counter_reg[3:1],\counter[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(1'b0));
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\NLW_counter_reg[12]_i_1_CO_UNCONNECTED [3],\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_6 ),
        .Q(counter_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_5 ),
        .Q(counter_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_4 ),
        .Q(counter_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(1'b0));
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_1_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(1'b0));
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(1'b0));
  CARRY4 pwmOut0_carry
       (.CI(1'b0),
        .CO({pwmOut0_carry_n_0,pwmOut0_carry_n_1,pwmOut0_carry_n_2,pwmOut0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({pwmOut0_carry_i_1_n_0,pwmOut0_carry_i_2_n_0,pwmOut0_carry_i_3_n_0,pwmOut0_carry_i_4_n_0}),
        .O(NLW_pwmOut0_carry_O_UNCONNECTED[3:0]),
        .S({pwmOut0_carry_i_5_n_0,pwmOut0_carry_i_6_n_0,pwmOut0_carry_i_7_n_0,pwmOut0_carry_i_8_n_0}));
  CARRY4 pwmOut0_carry__0
       (.CI(pwmOut0_carry_n_0),
        .CO({p_0_in,pwmOut0_carry__0_n_1,pwmOut0_carry__0_n_2,pwmOut0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({pwmOut0_carry__0_i_1_n_0,pwmOut0_carry__0_i_2_n_0,pwmOut0_carry__0_i_3_n_0,pwmOut0_carry__0_i_4_n_0}),
        .O(NLW_pwmOut0_carry__0_O_UNCONNECTED[3:0]),
        .S({pwmOut0_carry__0_i_5_n_0,pwmOut0_carry__0_i_6_n_0,pwmOut0_carry__0_i_7_n_0,pwmOut0_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwmOut0_carry__0_i_1
       (.I0(thresh[14]),
        .I1(counter_reg[14]),
        .I2(counter_reg[15]),
        .I3(thresh[15]),
        .O(pwmOut0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwmOut0_carry__0_i_2
       (.I0(thresh[12]),
        .I1(counter_reg[12]),
        .I2(counter_reg[13]),
        .I3(thresh[13]),
        .O(pwmOut0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwmOut0_carry__0_i_3
       (.I0(thresh[10]),
        .I1(counter_reg[10]),
        .I2(counter_reg[11]),
        .I3(thresh[11]),
        .O(pwmOut0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwmOut0_carry__0_i_4
       (.I0(thresh[8]),
        .I1(counter_reg[8]),
        .I2(counter_reg[9]),
        .I3(thresh[9]),
        .O(pwmOut0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwmOut0_carry__0_i_5
       (.I0(thresh[14]),
        .I1(counter_reg[14]),
        .I2(thresh[15]),
        .I3(counter_reg[15]),
        .O(pwmOut0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwmOut0_carry__0_i_6
       (.I0(thresh[12]),
        .I1(counter_reg[12]),
        .I2(thresh[13]),
        .I3(counter_reg[13]),
        .O(pwmOut0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwmOut0_carry__0_i_7
       (.I0(thresh[10]),
        .I1(counter_reg[10]),
        .I2(thresh[11]),
        .I3(counter_reg[11]),
        .O(pwmOut0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwmOut0_carry__0_i_8
       (.I0(thresh[8]),
        .I1(counter_reg[8]),
        .I2(thresh[9]),
        .I3(counter_reg[9]),
        .O(pwmOut0_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwmOut0_carry_i_1
       (.I0(thresh[6]),
        .I1(counter_reg[6]),
        .I2(counter_reg[7]),
        .I3(thresh[7]),
        .O(pwmOut0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwmOut0_carry_i_2
       (.I0(thresh[4]),
        .I1(counter_reg[4]),
        .I2(counter_reg[5]),
        .I3(thresh[5]),
        .O(pwmOut0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwmOut0_carry_i_3
       (.I0(thresh[2]),
        .I1(counter_reg[2]),
        .I2(counter_reg[3]),
        .I3(thresh[3]),
        .O(pwmOut0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwmOut0_carry_i_4
       (.I0(thresh[0]),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .I3(thresh[1]),
        .O(pwmOut0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwmOut0_carry_i_5
       (.I0(thresh[6]),
        .I1(counter_reg[6]),
        .I2(thresh[7]),
        .I3(counter_reg[7]),
        .O(pwmOut0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwmOut0_carry_i_6
       (.I0(thresh[4]),
        .I1(counter_reg[4]),
        .I2(thresh[5]),
        .I3(counter_reg[5]),
        .O(pwmOut0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwmOut0_carry_i_7
       (.I0(thresh[2]),
        .I1(counter_reg[2]),
        .I2(thresh[3]),
        .I3(counter_reg[3]),
        .O(pwmOut0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwmOut0_carry_i_8
       (.I0(thresh[0]),
        .I1(counter_reg[0]),
        .I2(thresh[1]),
        .I3(counter_reg[1]),
        .O(pwmOut0_carry_i_8_n_0));
  FDRE pwmOut_reg
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(pwmOut),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
