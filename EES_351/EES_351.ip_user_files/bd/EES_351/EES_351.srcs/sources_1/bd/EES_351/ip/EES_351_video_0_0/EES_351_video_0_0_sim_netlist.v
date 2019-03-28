// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Mar 27 14:17:36 2019
// Host        : DESKTOP-DJFQC36 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Eureka/Desktop/EES_351/EES_351.srcs/sources_1/bd/EES_351/ip/EES_351_video_0_0/EES_351_video_0_0_sim_netlist.v
// Design      : EES_351_video_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "EES_351_video_0_0,video,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "video,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module EES_351_video_0_0
   (vga_in_r,
    vga_in_g,
    vga_in_b,
    video_de,
    vga_r,
    vga_g,
    vga_b);
  input [3:0]vga_in_r;
  input [3:0]vga_in_g;
  input [3:0]vga_in_b;
  input video_de;
  output [3:0]vga_r;
  output [3:0]vga_g;
  output [3:0]vga_b;

  wire [3:0]vga_b;
  wire [3:0]vga_g;
  wire [3:0]vga_in_b;
  wire [3:0]vga_in_g;
  wire [3:0]vga_in_r;
  wire [3:0]vga_r;
  wire video_de;

  EES_351_video_0_0_video inst
       (.vga_b(vga_b),
        .vga_g(vga_g),
        .vga_in_b(vga_in_b),
        .vga_in_g(vga_in_g),
        .vga_in_r(vga_in_r),
        .vga_r(vga_r),
        .video_de(video_de));
endmodule

(* ORIG_REF_NAME = "video" *) 
module EES_351_video_0_0_video
   (vga_r,
    vga_g,
    vga_b,
    video_de,
    vga_in_r,
    vga_in_g,
    vga_in_b);
  output [3:0]vga_r;
  output [3:0]vga_g;
  output [3:0]vga_b;
  input video_de;
  input [3:0]vga_in_r;
  input [3:0]vga_in_g;
  input [3:0]vga_in_b;

  wire [3:0]vga_b;
  wire [3:0]vga_g;
  wire [3:0]vga_in_b;
  wire [3:0]vga_in_g;
  wire [3:0]vga_in_r;
  wire [3:0]vga_r;
  wire video_de;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vga_b[0]_INST_0 
       (.I0(video_de),
        .I1(vga_in_b[0]),
        .O(vga_b[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vga_b[1]_INST_0 
       (.I0(video_de),
        .I1(vga_in_b[1]),
        .O(vga_b[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vga_b[2]_INST_0 
       (.I0(video_de),
        .I1(vga_in_b[2]),
        .O(vga_b[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vga_b[3]_INST_0 
       (.I0(video_de),
        .I1(vga_in_b[3]),
        .O(vga_b[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vga_g[0]_INST_0 
       (.I0(video_de),
        .I1(vga_in_g[0]),
        .O(vga_g[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vga_g[1]_INST_0 
       (.I0(video_de),
        .I1(vga_in_g[1]),
        .O(vga_g[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vga_g[2]_INST_0 
       (.I0(video_de),
        .I1(vga_in_g[2]),
        .O(vga_g[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vga_g[3]_INST_0 
       (.I0(video_de),
        .I1(vga_in_g[3]),
        .O(vga_g[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vga_r[0]_INST_0 
       (.I0(video_de),
        .I1(vga_in_r[0]),
        .O(vga_r[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vga_r[1]_INST_0 
       (.I0(video_de),
        .I1(vga_in_r[1]),
        .O(vga_r[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vga_r[2]_INST_0 
       (.I0(video_de),
        .I1(vga_in_r[2]),
        .O(vga_r[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vga_r[3]_INST_0 
       (.I0(video_de),
        .I1(vga_in_r[3]),
        .O(vga_r[3]));
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