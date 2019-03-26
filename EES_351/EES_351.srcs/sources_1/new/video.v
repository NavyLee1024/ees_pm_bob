`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/27 14:04:29
// Design Name: 
// Module Name: video
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module video(
input [3:0] vga_in_r,
input [3:0] vga_in_g,
input [3:0] vga_in_b,
input video_de,
output [3:0]vga_r,
output [3:0]vga_g,
output [3:0]vga_b
    );
    assign vga_r = video_de?vga_in_r:0;
    assign vga_g = video_de?vga_in_g:0;
    assign vga_b = video_de?vga_in_b:0;
endmodule
