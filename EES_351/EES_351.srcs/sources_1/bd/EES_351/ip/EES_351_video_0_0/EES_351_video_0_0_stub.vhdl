-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed Mar 27 14:17:36 2019
-- Host        : DESKTOP-DJFQC36 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Eureka/Desktop/EES_351/EES_351.srcs/sources_1/bd/EES_351/ip/EES_351_video_0_0/EES_351_video_0_0_stub.vhdl
-- Design      : EES_351_video_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity EES_351_video_0_0 is
  Port ( 
    vga_in_r : in STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_in_g : in STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_in_b : in STD_LOGIC_VECTOR ( 3 downto 0 );
    video_de : in STD_LOGIC;
    vga_r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_b : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end EES_351_video_0_0;

architecture stub of EES_351_video_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "vga_in_r[3:0],vga_in_g[3:0],vga_in_b[3:0],video_de,vga_r[3:0],vga_g[3:0],vga_b[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "video,Vivado 2018.3";
begin
end;
