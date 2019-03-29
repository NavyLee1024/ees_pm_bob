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

    
    //mmap������֡ͼ��������ַ
    void        *ptr_map_frame0;
    void        *ptr_map_frame1;
    void        *ptr_map_frame2;

    //mmap��ҳƫ���������֤��page��������
    unsigned int   offset_map_Npage_frame0;
    unsigned int   offset_map_Npage_frame1;
    unsigned int   offset_map_Npage_frame2;
    //map���ص�֡��ʼ��ַ��������һ���ص�ƫ��
    unsigned int   offset_map_ptr_frame0;
    unsigned int   offset_map_ptr_frame1;
    unsigned int   offset_map_ptr_frame2;

    unsigned int   page_size = sysconf(_SC_PAGESIZE);


    fd = open("/dev/mem",O_RDWR);

    //���뵽ҳ��4096������������mmap����Ҫ��ģ�
    offset_map_Npage_frame0    = (VIDEO_BASEADDR0 & ~(page_size-1));//Ϊ�˱�֤��page(4096)�������������ü�С��ַ����ӽ�4096�ı�����ʽ��������ʼ��ַ��Ҫ�����һ����ƫ�����ݡ�
    offset_map_ptr_frame0  = VIDEO_BASEADDR0 - offset_map_Npage_frame0;//������Ч������ƫ�Ƶ�ַ������������ĵ�ַ��������ʼ��ַҪ�����ƫ��ֵ
    
    offset_map_Npage_frame1    = (VIDEO_BASEADDR1 & ~(page_size-1));//Ϊ�˱�֤��page(4096)�������������ü�С��ַ����ӽ�4096�ı�����ʽ��������ʼ��ַ��Ҫ�����һ����ƫ�����ݡ�
    offset_map_ptr_frame1  = VIDEO_BASEADDR1 - offset_map_Npage_frame1;
    
    offset_map_Npage_frame2    = (VIDEO_BASEADDR2 & ~(page_size-1));//Ϊ�˱�֤��page(4096)�������������ü�С��ַ����ӽ�4096�ı�����ʽ��������ʼ��ַ��Ҫ�����һ����ƫ�����ݡ�
    offset_map_ptr_frame2  = VIDEO_BASEADDR2 - offset_map_Npage_frame2;

    //(ptr_map_frame0 + offset_map_ptr_frame0)����������ÿ֡��һ�����ص㣬������õ�
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
  
	/*****************��DDRд��������**********************/
	//Xil_Out32((VDMA_BASEADDR + 0x030), 0x00000004);// enable circular mode
	Xil_Out32((VDMA_BASEADDR + 0x030), 0x0000008b);// enable circular mode
	Xil_Out32((VDMA_BASEADDR + 0x0AC), VIDEO_BASEADDR0);	// start address
	Xil_Out32((VDMA_BASEADDR + 0x0B0), VIDEO_BASEADDR1);	// start address
	Xil_Out32((VDMA_BASEADDR + 0x0B4), VIDEO_BASEADDR2);	// start address
	Xil_Out32((VDMA_BASEADDR + 0x0A8), (H_STRIDE*3));		// h offset (640 * 4) bytes
	Xil_Out32((VDMA_BASEADDR + 0x0A4), (H_ACTIVE*3));		// h size (640 * 4) bytes
	Xil_Out32((VDMA_BASEADDR + 0x0A0), V_ACTIVE);			// v size (480)
	/*****************��DDR����������**********************/
  
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




