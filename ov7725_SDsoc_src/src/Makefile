vdma: vdma.o xil_io.o ov5640_config.o emio_initial.o i2c_ctr.o
	gcc -o vdma vdma.o xil_io.o ov5640_config.o emio_initial.o i2c_ctr.o
vdma.o: vdma.c xil_io.h ov5640_config.h
	gcc -c vdma.c
xil_io.o: xil_io.c xil_io.h
	gcc -c xil_io.c
ov5640_config.o: ov5640_config.c ov5640_config.h
	gcc -c ov5640_config.c
emio_initial.o: emio_initial.c emio_initial.h xil_io.h
	gcc -c emio_initial.c
i2c_ctr.o: i2c_ctr.c i2c_ctr.h
	gcc -c i2c_ctr.c 
clean:
	rm -f *.o vdma