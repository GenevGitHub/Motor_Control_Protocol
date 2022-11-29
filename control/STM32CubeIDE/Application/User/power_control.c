/*
 * power_control.c
 *
 *  Created on: 11 Feb 2022
 *      Author: TerenceLeung
 */
#include "power_control.h"
#include "power_control_LL.h"
#include "main.h"
#include <stdint.h>

static Power_Control *control;
static Power_Status_Indicator *status;

void power_control_config(Power_Control *cmd)
{
    control = cmd;
}

void power_indicator_config(Power_Status_Indicator *indicator)
{
	status = indicator;
}

void power_ctl()
{
    switch(POWER)
    {
       case 0x00:
    	   control -> sleep();
    	   break;
       case 0x01:
    	   control -> wake();
    	   break;
       case 0x02:
    	   status -> switch_on();
    	   break;
       default:
    	   break;
    }
}
