 - MPSoC跑操作系统
    1. 错误一 Waiting for root device /dev/mmcblk0p2.  
      定位到原因 mmc0: error -110 whilst initialising SD card，mmc0初始化失败。具体原因 Bank 电平设置错误应该设置为 3.3v 并且在设备数中添加
      ```
      &sdhci1 {
        	status = "okay";
        	xlnx,has-cd = <0x1>;
        	xlnx,has-power = <0x0>;
        	xlnx,has-wp = <0x1>;
        	disable-wp;
        	no-1-8-v;
      };
      ```
