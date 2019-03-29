/*
 * OvSensor.h
 *
 *  Created on: 2017Äê9ÔÂ29ÈÕ
 *      Author: BeatsGr
 */

#ifndef SRC_OVSENSOR_H_
#define SRC_OVSENSOR_H_
#include <stdio.h>
#include <unistd.h>
#include <asm/types.h>
void Init_Ov7725();

void SCL1();
void SCL0();
void SDA1();
void SDA0();

void sccb_start(void);
void sccb_end(void);
void sccb_sendbyte(__u_char value );
void sccb_senddata(unsigned char subaddr,unsigned char value);


#endif /* SRC_OVSENSOR_H_ */
