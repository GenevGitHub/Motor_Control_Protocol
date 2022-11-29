#include "system_control_protocol.h"
#include "system_control_protocol_LL.h"
#include "stdint.h"
#include "main.h"


static Tail_Light_Flash *Light_Flash;
static Light_Control *tail_light;
static ALERT_MSG *alert;
static TX_TIMEOUT_CONTROL *tx;

void register_Timer(Tail_Light_Flash *Flash_Light)
{
      Light_Flash = Flash_Light;
      Light_Flash -> timerInit();
}

void register_light_device(Light_Control *device)
{
     tail_light = device;
}

void register_message(ALERT_MSG *info)
{
	alert = info;
}

void register_tx_timer(TX_TIMEOUT_CONTROL *timer)
{
    tx = timer;
    tx -> tx_timer_init();
}

void Tail_Light_Control(uint8_t light)
{
	LIGHT_CONTROL status = (LIGHT_CONTROL)light;
	switch(status)
	{
	    case TOGGLE:
	    	Light_Flash -> startFlash();
	    	TIMER = 0x01;
	    	break;

	    case ON:
	    	if(TIMER == 0x01)
	    	{
	    		Light_Flash -> stopFlash();
	    		TIMER = 0x00;
	    	}
	    	tail_light -> on();
	    	break;

	    case OFF:
	    	if(TIMER == 0x01)
	    	{
	    	    Light_Flash -> stopFlash();
	    	    TIMER = 0x00;
	    	}
	    	tail_light -> off();
	    	break;

	    default:
	    	tail_light -> on();
	}
}

void send_alert_message()
{
    alert->boot_success();
}

void msg_retransmission_control()
{
	tx -> tx_timer_start();
}

uint8_t calCheckSum(uint8_t *msg, uint8_t size)
{
	uint16_t total = 0;
	uint8_t n = 0;
	while(n != size)
	{
	    total += msg[n];
	    n++;
	}
	return (total & 0xFF) + ((total >> 8) & 0xFF);
}
