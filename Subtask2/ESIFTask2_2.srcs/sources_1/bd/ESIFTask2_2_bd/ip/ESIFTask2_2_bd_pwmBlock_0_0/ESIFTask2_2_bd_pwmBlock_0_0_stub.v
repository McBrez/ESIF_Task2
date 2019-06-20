// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Jun 20 10:16:00 2019
// Host        : FREISMUTHDESK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/DEV/ESIF/Task2/ESIF_Task2/Subtask2/ESIFTask2_2.srcs/sources_1/bd/ESIFTask2_2_bd/ip/ESIFTask2_2_bd_pwmBlock_0_0/ESIFTask2_2_bd_pwmBlock_0_0_stub.v
// Design      : ESIFTask2_2_bd_pwmBlock_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "pwmBlock,Vivado 2018.3" *)
module ESIFTask2_2_bd_pwmBlock_0_0(thresh, clk, pwmOut)
/* synthesis syn_black_box black_box_pad_pin="thresh[31:0],clk,pwmOut" */;
  input [31:0]thresh;
  input clk;
  output pwmOut;
endmodule