/**
 * \file
 *
 * \brief Empty user application template
 *
 */

/**
 * \mainpage User Application template doxygen documentation
 *
 * \par Empty user application template
 *
 * Bare minimum empty user application template
 *
 * \par Content
 *
 * -# Include the ASF header files (through asf.h)
 * -# Minimal main function that starts with a call to system_init()
 * -# "Insert application code here" comment
 *
 */

/*
 * Include header files for all drivers that have been imported from
 * Atmel Software Framework (ASF).
 */
/*
 * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
 */
#include <asf.h>

#define BLU_MODULE		TC3
#define BLU_OUT_PIN     PIN_PA19E_TC3_WO1
#define BLU_OUT_MUX     MUX_PA19E_TC3_WO1

#define PWR_MODULE		TC4
#define PWR_OUT_PIN     PIN_PB08E_TC4_WO0
#define PWR_OUT_MUX     MUX_PB08E_TC4_WO0

#define SERVO_MODULE	TC5

void configure_tc(void);
void configure_extint_channel(void);
void configure_extint_callbacks(void);
void extint_detection_callback(void);

struct tc_module tc_blu_led_out, tc_pwr_led_out, tc_servo_in;

int main (void)
{
	system_init();
	delay_init();
	configure_tc();
	
	configure_extint_channel();
	configure_extint_callbacks();
	
	system_interrupt_enable_global();
	
	while (true) {
		sleepmgr_sleep(SLEEPMGR_IDLE_2);
	}
}

void configure_tc(void)
{
	struct tc_config config_tc;
	
	tc_get_config_defaults(&config_tc);
	config_tc.counter_size								= TC_COUNTER_SIZE_16BIT;
	config_tc.wave_generation							= TC_WAVE_GENERATION_MATCH_PWM;
	config_tc.clock_source								= GCLK_GENERATOR_0;
	config_tc.clock_prescaler							= TC_CLOCK_PRESCALER_DIV1;
	config_tc.waveform_invert_output					= TC_WAVEFORM_INVERT_OUTPUT_CHANNEL_1;
	config_tc.counter_16_bit.compare_capture_channel[1]	= 0;
	config_tc.pwm_channel[1].enabled					= true;
	config_tc.pwm_channel[1].pin_out					= BLU_OUT_PIN;
	config_tc.pwm_channel[1].pin_mux					= BLU_OUT_MUX;
	tc_init(&tc_blu_led_out, BLU_MODULE, &config_tc);
	
	tc_get_config_defaults(&config_tc);
	config_tc.counter_size								= TC_COUNTER_SIZE_8BIT;
	config_tc.wave_generation							= TC_WAVE_GENERATION_NORMAL_PWM;
	config_tc.clock_source								= GCLK_GENERATOR_0;
	config_tc.clock_prescaler							= TC_CLOCK_PRESCALER_DIV64;
	config_tc.waveform_invert_output					= TC_WAVEFORM_INVERT_OUTPUT_NONE;
	config_tc.counter_8_bit.compare_capture_channel[0]	= 0;
	config_tc.counter_8_bit.period						= 250;
	config_tc.pwm_channel[0].enabled					= true;
	config_tc.pwm_channel[0].pin_out					= PWR_OUT_PIN;
	config_tc.pwm_channel[0].pin_mux					= PWR_OUT_MUX;
	tc_init(&tc_pwr_led_out, PWR_MODULE, &config_tc);

	tc_get_config_defaults(&config_tc);
	config_tc.counter_size								= TC_COUNTER_SIZE_16BIT;
	config_tc.clock_source								= GCLK_GENERATOR_0;
	config_tc.clock_prescaler							= TC_CLOCK_PRESCALER_DIV1;
	tc_init(&tc_servo_in, SERVO_MODULE, &config_tc);
	
	tc_enable(&tc_blu_led_out);
	tc_enable(&tc_pwr_led_out);
	tc_enable(&tc_servo_in);
	
	tc_set_top_value(&tc_blu_led_out, 64000);
	//tc_set_top_value(&tc_pwr_led_out, 250);
}

void configure_extint_channel(void)
{
	struct extint_chan_conf config_extint_chan;
	extint_chan_get_config_defaults(&config_extint_chan);
	config_extint_chan.gpio_pin           = PIN_PA10A_EIC_EXTINT10;
	config_extint_chan.gpio_pin_mux       = MUX_PA10A_EIC_EXTINT10;
	config_extint_chan.gpio_pin_pull      = EXTINT_PULL_UP;
	config_extint_chan.detection_criteria = EXTINT_DETECT_BOTH;
	extint_chan_set_config(10, &config_extint_chan);
}

void configure_extint_callbacks(void)
{
	extint_register_callback(extint_detection_callback, 10, EXTINT_CALLBACK_TYPE_DETECT);
	extint_chan_enable_callback(10, EXTINT_CALLBACK_TYPE_DETECT);
}

void extint_detection_callback(void)
{
	bool pin_state = port_pin_get_input_level(PIN_PA10A_EIC_EXTINT10);
	if (pin_state) {
		tc_set_count_value(&tc_servo_in, 0);
	} else {
		uint32_t meas = tc_get_count_value(&tc_servo_in);
		if (meas < 12000) {
			meas = 0;
		} else {
			meas -= 12000; // 1 ms at 8 MHz sys clock
		}
		
		if (meas > 4000) {
			meas = 64000;
		} else {
			meas *= 16;    // scale so 1 ms = 0, 2 ms = 2^16
		}
		
		tc_set_compare_value(&tc_blu_led_out, TC_COMPARE_CAPTURE_CHANNEL_1, (meas & 0xFFFF));
		
		//if (meas < 128) { // maintain at least 6 switching cycles
		//	meas = 0;
		//}
		meas >>= 8;
		tc_set_compare_value(&tc_pwr_led_out, TC_COMPARE_CAPTURE_CHANNEL_0, (meas & 0xFF));
	}
}