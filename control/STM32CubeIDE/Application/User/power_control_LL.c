/*
 * power_control_LL.c
 *
 *  Created on: 11 Feb 2022
 *      Author: TerenceLeung
 */
#include "power_control_LL.h"
#include "power_control.h"
#include "system_control_protocol.h"
#include "system_control_protocol_LL.h"
#include "motorcontrol.h"
#include "main.h"

uint8_t stop = 0;
static void power_off();
static void system_boot();
static void system_boot();
static void light_indicator_on();
static void light_indicator_off();
static void clock_disable();
static void clock_sleep_disable();

static Power_Control power_control =
{
	power_off,
	system_boot
};

static Power_Status_Indicator power_status_indicator =
{
		light_indicator_on,
		light_indicator_off
};

void POWER_CONTROL_SETTING()
{
    power_control_config(&power_control);
    power_indicator_config(&power_status_indicator);
}

static void power_off()
{
	/**For debug purpose, I temporarily commented this part!**/
	//Stop the timer interrupt to stop counting the timeout!!!!!!
    //if(timeout == 1)
    //{
    //	HAL_TIM_Base_Stop_IT(&htim4);
    //	timeout = 0;
    //}
	if(stop == 0)
	{
		/**Stop the motor for safety purpose**/
		/**You must decelerate the speed instead of hard braking!
		 * Otherwise, it is very dangerous for the driver !!**/
		MC_ProgramSpeedRampMotor1(0,200);
		HAL_Delay(500);
		MC_StopMotor1();
		HAL_Delay(2000);
		stop = 1;
	}
	else if(stop == 1)
	{
		/**Disable all peripherals after successfully stopping the motor, then enter the sleeping mode**/
		HAL_GPIO_WritePin(HEARTBEAT_GPIO_Port,HEARTBEAT_Pin,GPIO_PIN_RESET);
		HAL_GPIO_WritePin(POWER_INDICATOR_GPIO_Port,POWER_INDICATOR_Pin,GPIO_PIN_RESET);
		HAL_GPIO_WritePin(SAFETY_LIGHT_GPIO_Port,SAFETY_LIGHT_Pin,GPIO_PIN_RESET);
		HAL_SuspendTick();
		clock_disable();
		HAL_PWR_EnterSLEEPMode(PWR_LOWPOWERREGULATOR_ON,PWR_SLEEPENTRY_WFI);
		clock_sleep_disable();
	}
}

static void system_boot()
{
	HAL_NVIC_SystemReset();
}

static void clock_disable()
{
	/** GPIO Ports Clock Disable **/
	__HAL_RCC_GPIOC_CLK_DISABLE();
	__HAL_RCC_GPIOA_CLK_DISABLE();
	__HAL_RCC_GPIOB_CLK_DISABLE();
	__HAL_RCC_GPIOH_CLK_DISABLE();
	__HAL_RCC_TIM2_CLK_DISABLE();
	__HAL_RCC_TIM3_CLK_DISABLE();
	__HAL_RCC_TIM1_CLK_DISABLE();
	__HAL_RCC_TIM4_CLK_DISABLE();
	__HAL_RCC_ADC1_CLK_DISABLE();
	__HAL_RCC_ADC2_CLK_DISABLE();
	__HAL_RCC_PWR_CLK_DISABLE();
	__HAL_RCC_SYSCFG_CLK_DISABLE();
}

static void clock_sleep_disable()
{
	__HAL_RCC_GPIOA_CLK_SLEEP_DISABLE();
	__HAL_RCC_GPIOB_CLK_SLEEP_DISABLE();
	__HAL_RCC_GPIOC_CLK_SLEEP_DISABLE();
    __HAL_RCC_GPIOH_CLK_SLEEP_DISABLE();
    __HAL_RCC_TIM1_CLK_SLEEP_DISABLE();
    __HAL_RCC_TIM2_CLK_SLEEP_DISABLE();
    __HAL_RCC_TIM3_CLK_SLEEP_DISABLE();
    __HAL_RCC_TIM4_CLK_SLEEP_DISABLE();
    __HAL_RCC_ADC1_CLK_SLEEP_DISABLE();
    __HAL_RCC_ADC2_CLK_SLEEP_DISABLE();
    __HAL_RCC_PWR_CLK_SLEEP_DISABLE();
    __HAL_RCC_SYSCFG_CLK_SLEEP_DISABLE();
}

static void light_indicator_on()
{
	HAL_GPIO_WritePin(POWER_INDICATOR_GPIO_Port,POWER_INDICATOR_Pin,GPIO_PIN_SET);
}

static void light_indicator_off()
{
	HAL_GPIO_WritePin(POWER_INDICATOR_GPIO_Port,POWER_INDICATOR_Pin,GPIO_PIN_RESET);
}
