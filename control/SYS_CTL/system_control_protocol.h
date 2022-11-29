/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __SYSTEM_CONTROL_PROTOCOL_H
#define __SYSTEM_CONTROL_PROTOCOL_H

#ifdef __cplusplus
extern "C"
{
#endif

#include "stdint.h"


uint8_t TIMER;


typedef enum
{
	TOGGLE,   /*0 */
	ON,       /*1 */
	OFF       /*2 */
}LIGHT_CONTROL;


typedef void (*timerInit)(void);
typedef void (*timerStart)(void);
typedef void (*timerStop)(void);
typedef struct
{
	timerInit  timerInit;
	timerStart startFlash;
	timerStop   stopFlash;
}Tail_Light_Flash;


typedef void (*LightON)(void);
typedef void (*LightOFF)(void);
typedef struct
{
	LightON on;
	LightOFF off;
}Light_Control;


typedef void (*BOOT_MSG)(void);
typedef struct
{
	BOOT_MSG boot_success;
}ALERT_MSG;


typedef void (*TX_timerInit)(void);
typedef void (*TX_timerStart)(void);
typedef void (*TX_timerStop)(void);
typedef struct
{
	TX_timerInit  tx_timer_init;
	TX_timerStart  tx_timer_start;
	TX_timerStop   tx_timer_Stop;
}TX_TIMEOUT_CONTROL;


/**Activate the timer to toggle the tail light**/
void register_Timer(Tail_Light_Flash *Flash_Light);

/**Tail Light Configuration**/
void register_light_device(Light_Control *light);

/**Message control protocol**/
void register_message(ALERT_MSG *message);

/**Activate this timer to count the number of retransmissions**/
void register_tx_timer(TX_TIMEOUT_CONTROL *timer);

/**Control The Tail Light's Operation**/
void Tail_Light_Control(uint8_t light);

/**Send the message**/
void send_alert_message();

/****/
void msg_retransmission_control();

/**System will check the messages' integrity**/
uint8_t calCheckSum(uint8_t *msg, uint8_t size);

#ifdef __cplusplus
}
#endif

#endif
