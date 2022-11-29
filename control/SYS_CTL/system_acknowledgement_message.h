/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __SYSTEM_ACKNOWLEDGEMENT_MESSAGE_H
#define __SYSTEM_ACKNOWLEDGEMENT_MESSAGE_H

#ifdef __cplusplus
extern "C"
{
#endif

uint8_t POWER_OFF  =   0x08;
uint8_t WAKE_UP    =   0x09;
uint8_t HEARTBEAT  =   0x0A;
uint8_t SERINUM	   =   0x0B;
uint8_t LIGHT_ON   =   0x0C;
uint8_t LIGHT_OFF  =   0x0D;
uint8_t LIGHT_TOGGLE =  0x0E;

#ifdef __cplusplus
}
#endif

#endif
