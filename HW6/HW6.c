#include <stdio.h>
#include "ssd1306.h"
#include "font.h"
#include "pico/stdlib.h"
#include "hardware/i2c.h"
#include "hardware/adc.h"

void drawchar(uint x, uint y, char letter)
{
    for (int col = 0; col < 5; col++)
    {
        char cha = ASCII[letter - 32][col];
        for (int row = 0; row < 8; row++)
        {
            char bit = (cha >> row) & 0b1;
            if (bit)
            {
                ssd1306_drawPixel(x + col, y + row, 1);
            }
            else
            {
                ssd1306_drawPixel(x + col, y + row, 0);
            }
        }
    }
}

void drawstring(uint x, uint y, char *message)
{
    int i = 0;
    while (message[i])
    {
        drawchar(x + i * (5 + 1), y * (8 + 1), message[i]);
        i++;
    }
    ssd1306_update();
}

int main()
{
    stdio_init_all();
    char message[50];//initialize the empty char array
    // Initialize the LED on Pico
    gpio_init(PICO_DEFAULT_LED_PIN);
    gpio_set_dir(PICO_DEFAULT_LED_PIN, GPIO_OUT);

    // Initialize ADC
    adc_init();             // init the adc module
    adc_gpio_init(26); // set ADC0 pin to be adc input instead of GPIO
    adc_select_input(0);    // select to read from ADC0

    // Initialize I2C
    i2c_init(i2c_default, 100 * 1000);
    // Initialize SDA and SCL pins on Pico
    gpio_init(PICO_DEFAULT_I2C_SDA_PIN);
    gpio_init(PICO_DEFAULT_I2C_SCL_PIN);
    gpio_set_function(PICO_DEFAULT_I2C_SDA_PIN, GPIO_FUNC_I2C);
    gpio_set_function(PICO_DEFAULT_I2C_SCL_PIN, GPIO_FUNC_I2C);

    // Initialize SSD1306
    ssd1306_setup();
    while (1)
    {
        // Blink LED
        gpio_put(PICO_DEFAULT_LED_PIN, 1);
        sleep_ms(250);
        gpio_put(PICO_DEFAULT_LED_PIN, 0);

        // Count the time for reading the ADC value
        int start = to_us_since_boot(get_absolute_time());

        // Read the ADC value
        uint Voltage = adc_read();
        // Print the ADC value
        sprintf(message, "ADC voltage: %.3fV", ((double)Voltage * 3.3) / 4096);
        drawstring(0, 0, message);
        ssd1306_update();

        // Count the time for reading the ADC value
        int end = to_us_since_boot(get_absolute_time());

        // Print the frames per second that the display achieves
        double timer = end - start;
        sprintf(message, "FPS: %.3ff/s", timer / 1000.0);
        drawstring(0, 2, message);
        ssd1306_update();

        // poll every 250ms
        sleep_ms(250 - timer);
    }

    return 0;
}


