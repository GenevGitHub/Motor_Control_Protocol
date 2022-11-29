/*
 * power_control.h
 *
 *  Created on: 11 Feb 2022
 *      Author: TerenceLeung
 */

#ifndef POWER_CONTROL_H
#define POWER_CONTROL_H

#ifdef __cplusplus
extern "C"
{
#endif

#include <stdint.h>

uint8_t POWER;

typedef void (*system_sleep)(void);
typedef void (*system_wake)(void);
typedef struct
{
   system_sleep sleep;
   system_wake wake;
}Power_Control;

typedef void (*indicator_on)(void);
typedef void (*indicator_off)(void);
typedef struct
{
	indicator_on switch_on;
	indicator_off switch_off;
}Power_Status_Indicator;


void power_control_config(Power_Control *cmd);
void power_indicator_config(Power_Status_Indicator *indicator);
void power_ctl();

#ifdef __cplusplus
}
#endif
#endif
