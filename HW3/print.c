#include <stdio.h>
#include "pico/stdlib.h"
#include "hardware/adc.h"
int main() {
    const int frequency;
    stdio_init_all();
    while (!stdio_usb_connected()) {
        sleep_ms(100);
    }
    gpio_init(0); //pin 1 for LED turned on and off
    gpio_set_dir(0, GPIO_OUT);//set pin  for output pin
    gpio_put(0, 1);//turn on the LED

    while(gpio_get(1) == 0);//while button has been pushed
        gpio_put(0, 0);//turn off the LED

    printf("Start!\n");
    adc_init(); // init the adc module
    adc_gpio_init(26); // set ADC0 pin to be adc input instead of GPIO
    adc_select_input(0); // select to read from ADC0
 
    while (1) {
        scanf("%d", &frequency);
        // adc_val accumulator
        // Reads the voltage on ADC0 that number of times at 100Hz
        for (int i=0; i<frequency; i++) {
            // clock_t start = clock();
            uint16_t voltage = adc_read();
            sleep_ms(10);
        // Prints the voltages in the units of volts
            printf("Voltage detected: %fV\r\n", (voltage * 3.3) / 4090);
        }
        }
        return 0;
    }
