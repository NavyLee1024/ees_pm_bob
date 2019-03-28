-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed Mar 27 11:14:36 2019
-- Host        : DESKTOP-DJFQC36 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top EES_351_util_vector_logic_1_0 -prefix
--               EES_351_util_vector_logic_1_0_ EES_351_util_vector_logic_0_0_sim_netlist.vhdl
-- Design      : EES_351_util_vector_logic_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity EES_351_util_vector_logic_1_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of EES_351_util_vector_logic_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of EES_351_util_vector_logic_1_0 : entity is "EES_351_util_vector_logic_0_0,util_vector_logic_v2_0_1_util_vector_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of EES_351_util_vector_logic_1_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of EES_351_util_vector_logic_1_0 : entity is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2018.3";
end EES_351_util_vector_logic_1_0;

architecture STRUCTURE of EES_351_util_vector_logic_1_0 is
begin
\Res[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Op1(0),
      O => Res(0)
    );
end STRUCTURE;