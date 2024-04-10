#include <stdio.h>
#include "pico/stdlib.h"
#include "hardware/adc.h"

int main() {
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
        char message[100];
        scanf("%s", message);
        printf("message: %s\r\n",message);
        for (int i = 0; i<*message; i++){
           uint16_t result = adc_read(); 
           float convert = (float)result/1212.0;
           printf("adc: %d\r\n",i,convert);  
           sleep_ms (10);  
        }
    }
}