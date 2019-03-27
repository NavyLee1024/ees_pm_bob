SCL
set_property PACKAGE_PIN AB20 [get_ports {gpio_rtl_0_tri_o[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_rtl_0_tri_o[0]}]
#set_property PULLUP true [get_ports {gpio_rtl_0_tri_o[0]}]
#SDA
set_property PACKAGE_PIN AB19 [get_ports {gpio_rtl_0_tri_o[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_rtl_0_tri_o[1]}]
#set_property PULLUP true [get_ports {gpio_rtl_0_tri_o[1]}]

#VERION_1_EES330---------------------------------------------------------
set_property -dict {PACKAGE_PIN W21 IOSTANDARD LVCMOS33} [get_ports cmos_xclk_o]
#set_property -dict {PACKAGE_PIN AA22 IOSTANDARD LVCMOS33} [get_ports cmos_pclk_i]
set_property -dict {PACKAGE_PIN U20 IOSTANDARD LVCMOS33} [get_ports cmos_pclk_i]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets cmos_pclk_i]
#------------------------------------------------------------------------------------------------
set_property -dict {PACKAGE_PIN W17 IOSTANDARD LVCMOS33} [get_ports cmos_vsync_i]
set_property -dict {PACKAGE_PIN Y20 IOSTANDARD LVCMOS33} [get_ports cmos_href_i]
#------------------------------------------------------------------------------------------------
set_property -dict {PACKAGE_PIN AB22 IOSTANDARD LVCMOS33} [get_ports {cmos_data_i[0]}]
set_property -dict {PACKAGE_PIN V18 IOSTANDARD LVCMOS33} [get_ports {cmos_data_i[1]}]
set_property -dict {PACKAGE_PIN V20 IOSTANDARD LVCMOS33} [get_ports {cmos_data_i[2]}]
set_property -dict {PACKAGE_PIN AA21 IOSTANDARD LVCMOS33} [get_ports {cmos_data_i[3]}]
set_property -dict {PACKAGE_PIN AB21 IOSTANDARD LVCMOS33} [get_ports {cmos_data_i[4]}]
set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS33} [get_ports {cmos_data_i[5]}]
set_property -dict {PACKAGE_PIN V19 IOSTANDARD LVCMOS33} [get_ports {cmos_data_i[6]}]
set_property -dict {PACKAGE_PIN AA22 IOSTANDARD LVCMOS33} [get_ports {cmos_data_i[7]}]

##VERISON_2---------------------------------------------------------
#set_property -dict {PACKAGE_PIN V19 IOSTANDARD LVCMOS33} [get_ports cmos_xclk_o]
#set_property -dict {PACKAGE_PIN W17 IOSTANDARD LVCMOS33} [get_ports cmos_pclk_i]
##set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets cmos_pclk_i]
##------------------------------------------------------------------------------------------------
#set_property -dict {PACKAGE_PIN U22 IOSTANDARD LVCMOS33} [get_ports cmos_vsync_i]
#set_property -dict {PACKAGE_PIN T22 IOSTANDARD LVCMOS33} [get_ports cmos_href_i]
##------------------------------------------------------------------------------------------------
#set_property -dict {PACKAGE_PIN AA22 IOSTANDARD LVCMOS33} [get_ports {cmos_data_i[2]}]
#set_property -dict {PACKAGE_PIN U20 IOSTANDARD LVCMOS33} [get_ports {cmos_data_i[3]}]
#set_property -dict {PACKAGE_PIN W20 IOSTANDARD LVCMOS33} [get_ports {cmos_data_i[4]}]
#set_property -dict {PACKAGE_PIN W21 IOSTANDARD LVCMOS33} [get_ports {cmos_data_i[5]}]
#set_property -dict {PACKAGE_PIN V22 IOSTANDARD LVCMOS33} [get_ports {cmos_data_i[6]}]
#set_property -dict {PACKAGE_PIN W22 IOSTANDARD LVCMOS33} [get_ports {cmos_data_i[7]}]
#set_property -dict {PACKAGE_PIN AB22 IOSTANDARD LVCMOS33} [get_ports {cmos_data_i[1]}]
#set_property -dict {PACKAGE_PIN V20 IOSTANDARD LVCMOS33} [get_ports {cmos_data_i[0]}]
##--------------------------------------------------------------------------------------------------
##--------------------------------------------------------------------------------------------------
set_property PACKAGE_PIN U15 [get_ports {vga_r[0]}]
set_property PACKAGE_PIN U16 [get_ports {vga_r[1]}]
set_property PACKAGE_PIN U17 [get_ports {vga_r[2]}]
set_property PACKAGE_PIN V15 [get_ports {vga_r[3]}]
set_property PACKAGE_PIN AA17 [get_ports {vga_g[0]}]
set_property PACKAGE_PIN AB17 [get_ports {vga_g[1]}]
set_property PACKAGE_PIN AA16 [get_ports {vga_g[2]}]
set_property PACKAGE_PIN AB16 [get_ports {vga_g[3]}]
set_property PACKAGE_PIN W15 [get_ports {vga_b[0]}]
set_property PACKAGE_PIN Y15 [get_ports {vga_b[1]}]
set_property PACKAGE_PIN AA14 [get_ports {vga_b[2]}]
set_property PACKAGE_PIN AB15 [get_ports {vga_b[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vid_hsync_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vid_vsync_0[0]}]

set_property PACKAGE_PIN W16 [get_ports {vid_hsync_0[0]}]
set_property PACKAGE_PIN Y16 [get_ports {vid_vsync_0[0]}]


