#ifndef XIL_IO_H
#define XIL_IO_H
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/mman.h>

void Xil_Out32(__uint64_t phyaddr, __uint32_t val);
int Xil_In32(__uint64_t phyaddr);
#endif
