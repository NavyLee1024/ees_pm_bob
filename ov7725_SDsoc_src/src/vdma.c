#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/stat.h> 
#include "xil_io.h"
#include <errno.h>
#include <signal.h>
#include <fcntl.h>
#include <ctype.h>
#include <termios.h>
#include <string.h>
#include <sys/types.h>
#include <sys/mman.h>
#include <sys/ioctl.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include "OvSensor.h"
#define DDR_BASEADDR        0x30000000
//#define UART_BASEADDR       0xe0001000
#define VDMA_BASEADDR       0x43000000
#define H_STRIDE            640
#define H_ACTIVE            640
#define V_ACTIVE            480
#define FRAME_SIZE           640*480*3
#define VIDEO_BASEADDR0 DDR_BASEADDR + 0x2000000
#define VIDEO_BASEADDR1 DDR_BASEADDR + 0x3000000
#define VIDEO_BASEADDR2 DDR_BASEADDR + 0x4000000
void start_vdma(void);
float       coordinate_x[480];
float       coordinate_y[480];
int main()
{
    struct sockaddr_in server_addr,their_addr;
    int sock_fd,fd;

    
    //mmap返回三帧图像的虚拟地址
    void        *ptr_map_frame0;
    void        *ptr_map_frame1;
    void        *ptr_map_frame2;

    //mmap的页偏差参数，保证是page的整数倍
    unsigned int   offset_map_Npage_frame0;
    unsigned int   offset_map_Npage_frame1;
    unsigned int   offset_map_Npage_frame2;
    //map返回的帧起始地址和真正第一像素的偏差
    unsigned int   offset_map_ptr_frame0;
    unsigned int   offset_map_ptr_frame1;
    unsigned int   offset_map_ptr_frame2;

    unsigned int   page_size = sysconf(_SC_PAGESIZE);


    fd = open("/dev/mem",O_RDWR);

    //对齐到页（4096）的整倍数，mmap（）要求的，
    offset_map_Npage_frame0    = (VIDEO_BASEADDR0 & ~(page_size-1));//为了保证是page(4096)的整倍数，采用减小基址到最接近4096的倍数方式，可能起始地址就要多包含一部分偏移数据。
    offset_map_ptr_frame0  = VIDEO_BASEADDR0 - offset_map_Npage_frame0;//真正有效的数据偏移地址，减掉多出来的地址。后面起始地址要加这个偏差值
    
    offset_map_Npage_frame1    = (VIDEO_BASEADDR1 & ~(page_size-1));//为了保证是page(4096)的整倍数，采用减小基址到最接近4096的倍数方式，可能起始地址就要多包含一部分偏移数据。
    offset_map_ptr_frame1  = VIDEO_BASEADDR1 - offset_map_Npage_frame1;
    
    offset_map_Npage_frame2    = (VIDEO_BASEADDR2 & ~(page_size-1));//为了保证是page(4096)的整倍数，采用减小基址到最接近4096的倍数方式，可能起始地址就要多包含一部分偏移数据。
    offset_map_ptr_frame2  = VIDEO_BASEADDR2 - offset_map_Npage_frame2;

    //(ptr_map_frame0 + offset_map_ptr_frame0)才是真正的每帧第一个像素点，后面会用到
    ptr_map_frame0 = mmap(NULL,FRAME_SIZE,PROT_READ|PROT_WRITE,MAP_SHARED,fd,offset_map_Npage_frame0);
    ptr_map_frame1 = mmap(NULL,FRAME_SIZE,PROT_READ|PROT_WRITE,MAP_SHARED,fd,offset_map_Npage_frame1);
    ptr_map_frame2 = mmap(NULL,FRAME_SIZE,PROT_READ|PROT_WRITE,MAP_SHARED,fd,offset_map_Npage_frame2);
     

  start_vdma();
  while(1){
	  sleep(1);
	  printf("1\n\r");
  }
 
     return 0;
}

void start_vdma(void)
{
  
	/*****************往DDR写数据设置**********************/
	//Xil_Out32((VDMA_BASEADDR + 0x030), 0x00000004);// enable circular mode
	Xil_Out32((VDMA_BASEADDR + 0x030), 0x0000008b);// enable circular mode
	Xil_Out32((VDMA_BASEADDR + 0x0AC), VIDEO_BASEADDR0);	// start address
	Xil_Out32((VDMA_BASEADDR + 0x0B0), VIDEO_BASEADDR1);	// start address
	Xil_Out32((VDMA_BASEADDR + 0x0B4), VIDEO_BASEADDR2);	// start address
	Xil_Out32((VDMA_BASEADDR + 0x0A8), (H_STRIDE*3));		// h offset (640 * 4) bytes
	Xil_Out32((VDMA_BASEADDR + 0x0A4), (H_ACTIVE*3));		// h size (640 * 4) bytes
	Xil_Out32((VDMA_BASEADDR + 0x0A0), V_ACTIVE);			// v size (480)
	/*****************从DDR读数据设置**********************/
  
	//Xil_Out32((VDMA_BASEADDR + 0x000), 0x00000004); 		// enable circular mode
	Xil_Out32((VDMA_BASEADDR + 0x000), 0x0000008b); 		// enable circular mode
	Xil_Out32((VDMA_BASEADDR + 0x05c), VIDEO_BASEADDR0); 	// start address
	Xil_Out32((VDMA_BASEADDR + 0x060), VIDEO_BASEADDR1); 	// start address
	Xil_Out32((VDMA_BASEADDR + 0x064), VIDEO_BASEADDR2); 	// start address
	Xil_Out32((VDMA_BASEADDR + 0x058), (H_STRIDE*3)); 		// h offset (640 * 4) bytes
	Xil_Out32((VDMA_BASEADDR + 0x054), (H_ACTIVE*3)); 		// h size (640 * 4) bytes
	Xil_Out32((VDMA_BASEADDR + 0x050), V_ACTIVE); 
   sleep(5);
   printf("2\n\r");
   Init_Ov7725();
  
}




