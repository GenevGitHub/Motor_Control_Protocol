/*
 * system_control_protocol_LL.c
 *
 *  Created on: Feb 10, 2022
 *      Author: TerenceLeung
 */

/**
 * This library provides Low Level (LL) Driver Control to access the Peripherals
**/
#include "system_control_protocol_LL.h"
#include "system_control_protocol.h"
#include "power_control.h"
#include "main.h"
#include "stdlib.h"
/*Device Dependent Variables*/
TIM_HandleTypeDef htim2;

#define INTERVAL    840*2
#define TX_Interval  4200*2
#define MAX_PACKET   2

static void timer_flash_Init(void);
static void timer_flash_Start();
static void timer_flash_Stop();

static void LIGHT_ON();
static void LIGHT_OFF();

static void alert_msg();

static void retransmission_timer_Init(void);
static void retransmission_timer_Start();
static void retransmission_timer_Stop();

/**********************************************************************
 *  Structure
 */
//This is a structure to be passed to system_control_protocol.c to use the timer start and stop function
static Tail_Light_Flash tail_light_flash =
{
		timer_flash_Init,
		timer_flash_Start,
		timer_flash_Stop
};

/**********************************************************************
 *  Structure
 */
//This is a structure to be passed to system_control_protocol.c to turn on/turn off the tail light
static Light_Control light_control =
{
        LIGHT_ON,
		LIGHT_OFF
};

/**********************************************************************
 *  Structure
 */
//This is a structure to be passed to system_control_protocol.c to send the system msg
static ALERT_MSG msg =
{
       alert_msg
};


/**********************************************************************
 *  Structure
 */
//This is a structure to be passed to system_control_protocol.c to monitor the UART Protocol's stability
static TX_TIMEOUT_CONTROL tx_timer_control =
{
		retransmission_timer_Init,
		retransmission_timer_Start,
		retransmission_timer_Stop
};

void TIMER_CONTROL_SETTING()
{
    register_Timer(&tail_light_flash);
}

void LIGHT_CONTROL_SETTING()
{
	register_light_device(&light_control);
}

void MESSAGE_CONTROL_SETTING()
{
    register_message(&msg);
}

void TX_TIMER_CONTROL_SETTING()
{
	register_tx_timer(&tx_timer_control);
}


/**Initialize the TIM Peripheral in order to toggle the tail light regularly**/
static void timer_flash_Init(void)
{
	  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
	  TIM_MasterConfigTypeDef sMasterConfig = {0};
	  htim2.Instance = TIM2;
	  htim2.Init.Prescaler = 10000;
	  htim2.Init.CounterMode = TIM_COUNTERMODE_UP;
	  htim2.Init.Period = INTERVAL;
	  htim2.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
	  htim2.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
	  if (HAL_TIM_Base_Init(&htim2) != HAL_OK)
	  {
	    Error_Handler();
	  }
	  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
	  if (HAL_TIM_ConfigClockSource(&htim2, &sClockSourceConfig) != HAL_OK)
	  {
	    Error_Handler();
	  }
	  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
	  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
	  if (HAL_TIMEx_MasterConfigSynchronization(&htim2, &sMasterConfig) != HAL_OK)
	  {
	    Error_Handler();
	  }
}

/*Start TIM2 interrupt to toggle the tail light*/
static void timer_flash_Start()
{
	HAL_TIM_Base_Start_IT(&htim2);
}

/*Start TIM2 interrupt to stop toggling the tail light*/
static void timer_flash_Stop()
{
	HAL_TIM_Base_Stop_IT(&htim2);
}

/**
 The callback is triggered to flash the tail light
**/
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
	/**We toggle the tail light in every 0.1 seconds! **/
	if(htim == &htim2)
	{
        HAL_GPIO_TogglePin(SAFETY_LIGHT_GPIO_Port, SAFETY_LIGHT_Pin);
	}

	/**This timer starts counting the time elapsed when the controller does not receive any packets from the dashboard**/
	else if(htim == &htim4)
	{
        packetCount ++;

        /**If we have not received any packets within the defined maximum time delay, it is regarded as losing UART connection,
         * for the safety purpose, system will power off **/
        if(packetCount >= MAX_PACKET)
        {
        	packetCount = 0;
        	//timeout = 1;
        	//POWER = 0x00; /**For debug purpose, I temporarily commented this part!**/
        	//you have to stop the timer interrupt before stopping the motor!
        }
	};
}

/*Turn on the tail light*/
static void LIGHT_ON()
{
	HAL_GPIO_WritePin(SAFETY_LIGHT_GPIO_Port, SAFETY_LIGHT_Pin, GPIO_PIN_SET);
}

/*Turn off the tail light*/
static void LIGHT_OFF()
{
	HAL_GPIO_WritePin(SAFETY_LIGHT_GPIO_Port, SAFETY_LIGHT_Pin, GPIO_PIN_RESET);
}

/*Once the system is successfully booted, this message will be sent to the dash board to establish connection*/
static void alert_msg()
{
	  uint8_t *boot_msg = (uint8_t*)malloc(sizeof(uint8_t)*4);
	  boot_msg[0] = 0xF0;
	  boot_msg[1] = 0x01;
	  boot_msg[2] = 0x09;
	  boot_msg[3] = calCheckSum(boot_msg,3);
	  for(uint8_t i = 0; i < (sizeof(boot_msg)/sizeof(uint8_t)) ; i++)
	  {
		  HAL_UART_Transmit(&huart1,&(boot_msg[i]),1,200);
	  }
	  //free(boot_msg);
}


/*The TIM4 must be ON in order to ensure UART Communication Protocol is properly established between the dash board and the
 * motor controller*/
static void retransmission_timer_Init(void)
{
	  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
	  TIM_MasterConfigTypeDef sMasterConfig = {0};
	  htim4.Instance = TIM4;
	  htim4.Init.Prescaler = 10000;
	  htim4.Init.CounterMode = TIM_COUNTERMODE_UP;
	  htim4.Init.Period = TX_Interval;
	  htim4.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
	  htim4.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
	  if (HAL_TIM_Base_Init(&htim4) != HAL_OK)
	  {
	    Error_Handler();
	  }
	  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
	  if (HAL_TIM_ConfigClockSource(&htim4, &sClockSourceConfig) != HAL_OK)
	  {
	    Error_Handler();
	  }
	  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
	  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
	  if (HAL_TIMEx_MasterConfigSynchronization(&htim4, &sMasterConfig) != HAL_OK)
	  {
	    Error_Handler();
	  }
}

/**Start the TIM4 ISR to monitor the UART Connection**/
/*The TIM4 must be ON in order to ensure UART Communication Protocol is properly established between the dash board and the
 * motor controller*/
static void retransmission_timer_Start()
{
	HAL_TIM_Base_Start_IT(&htim4);
}

/**Disable TIM4 ISR to stop monitoring the UART Protocol's stability. Once you have disabled, it is not possible to detect whether
 * the system has lost the connection**/
/**Warning: To ensure the E-Scooter's safety, you must not use this function!!!!! **/
static void retransmission_timer_Stop()
{
	HAL_TIM_Base_Stop_IT(&htim4);
}
