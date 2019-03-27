-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed Mar 27 14:17:36 2019
-- Host        : DESKTOP-DJFQC36 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Eureka/Desktop/EES_351/EES_351.srcs/sources_1/bd/EES_351/ip/EES_351_video_0_0/EES_351_video_0_0_sim_netlist.vhdl
-- Design      : EES_351_video_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity EES_351_video_0_0_video is
  port (
    vga_r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    video_de : in STD_LOGIC;
    vga_in_r : in STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_in_g : in STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_in_b : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of EES_351_video_0_0_video : entity is "video";
end EES_351_video_0_0_video;

architecture STRUCTURE of EES_351_video_0_0_video is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \vga_b[0]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \vga_b[1]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \vga_b[2]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \vga_b[3]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \vga_g[0]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \vga_g[1]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \vga_g[2]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \vga_g[3]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \vga_r[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \vga_r[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \vga_r[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \vga_r[3]_INST_0\ : label is "soft_lutpair1";
begin
\vga_b[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => video_de,
      I1 => vga_in_b(0),
      O => vga_b(0)
    );
\vga_b[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => video_de,
      I1 => vga_in_b(1),
      O => vga_b(1)
    );
\vga_b[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => video_de,
      I1 => vga_in_b(2),
      O => vga_b(2)
    );
\vga_b[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => video_de,
      I1 => vga_in_b(3),
      O => vga_b(3)
    );
\vga_g[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => video_de,
      I1 => vga_in_g(0),
      O => vga_g(0)
    );
\vga_g[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => video_de,
      I1 => vga_in_g(1),
      O => vga_g(1)
    );
\vga_g[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => video_de,
      I1 => vga_in_g(2),
      O => vga_g(2)
    );
\vga_g[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => video_de,
      I1 => vga_in_g(3),
      O => vga_g(3)
    );
\vga_r[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => video_de,
      I1 => vga_in_r(0),
      O => vga_r(0)
    );
\vga_r[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => video_de,
      I1 => vga_in_r(1),
      O => vga_r(1)
    );
\vga_r[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => video_de,
      I1 => vga_in_r(2),
      O => vga_r(2)
    );
\vga_r[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => video_de,
      I1 => vga_in_r(3),
      O => vga_r(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity EES_351_video_0_0 is
  port (
    vga_in_r : in STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_in_g : in STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_in_b : in STD_LOGIC_VECTOR ( 3 downto 0 );
    video_de : in STD_LOGIC;
    vga_r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_b : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of EES_351_video_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of EES_351_video_0_0 : entity is "EES_351_video_0_0,video,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of EES_351_video_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of EES_351_video_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of EES_351_video_0_0 : entity is "video,Vivado 2018.3";
end EES_351_video_0_0;

architecture STRUCTURE of EES_351_video_0_0 is
begin
inst: entity work.EES_351_video_0_0_video
     port map (
      vga_b(3 downto 0) => vga_b(3 downto 0),
      vga_g(3 downto 0) => vga_g(3 downto 0),
      vga_in_b(3 downto 0) => vga_in_b(3 downto 0),
      vga_in_g(3 downto 0) => vga_in_g(3 downto 0),
      vga_in_r(3 downto 0) => vga_in_r(3 downto 0),
      vga_r(3 downto 0) => vga_r(3 downto 0),
      video_de => video_de
    );
end STRUCTURE;
