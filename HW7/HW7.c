#include <stdio.h>
#include "ssd1306.h"
#include "font.h"
#include "pico/stdlib.h"
#include "hardware/i2c.h"
#include "hardware/adc.h"
#include "hardware/uart.h"
#include "hardware/irq.h"

#define UART_ID uart0
#define BAUD_RATE 115200
#define DATA_BITS 8
#define STOP_BITS 1
#define PARITY    UART_PARITY_NONE

// We are using pins 0 and 1, but see the GPIO function select table in the
// datasheet for information on which other pins can be used.
#define UART_TX_PIN 0
#define UART_RX_PIN 1

static int chars_rxed = 0;
char message_stored[100];
int i = 0;


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
        drawchar(x + i * 5, y * 8 , message[i]);
        i++;
    }
    ssd1306_update();
}

// RX interrupt handler
void on_uart_rx() {
    while (uart_is_readable(UART_ID)) {
        uint8_t ch = uart_getc(UART_ID);
        if (ch == '\r' || ch=='\n') {
            ssd1306_clear();
            drawstring(0,0,message_stored);
            ssd1306_update();
            i = 0;
        }
        else{
            
            message_stored[i] = ch;
            i++;

        }

        if (uart_is_writable(UART_ID)) 
        {
            uart_putc(UART_ID, ch);
        }
        chars_rxed++;
    }
}

int main() {
    stdio_init_all();
    char message[50];//initialize the empty char array
    // Initialize the LED on Pico
    gpio_init(PICO_DEFAULT_LED_PIN);
    gpio_set_dir(PICO_DEFAULT_LED_PIN, GPIO_OUT);

     // Set the TX and RX pins by using the function select on the GPIO
    // Set datasheet for more information on function select
    gpio_set_function(UART_TX_PIN, GPIO_FUNC_UART);
    gpio_set_function(UART_RX_PIN, GPIO_FUNC_UART);
    // Initialize I2C
    i2c_init(i2c_default, 100 * 1000);
    // Initialize SDA and SCL pins on Pico
    gpio_init(PICO_DEFAULT_I2C_SDA_PIN);
    gpio_init(PICO_DEFAULT_I2C_SCL_PIN);
    gpio_set_function(PICO_DEFAULT_I2C_SDA_PIN, GPIO_FUNC_I2C);
    gpio_set_function(PICO_DEFAULT_I2C_SCL_PIN, GPIO_FUNC_I2C);

    // Set up our UART with a basic baud rate.
    uart_init(UART_ID, 2400);

   

    // Actually, we want a different speed
    // The call will return the actual baud rate selected, which will be as close as
    // possible to that requested
    int __unused actual = uart_set_baudrate(UART_ID, BAUD_RATE);

    // Set UART flow control CTS/RTS, we don't want these, so turn them off
    uart_set_hw_flow(UART_ID, false, false);

    // Set our data format
    uart_set_format(UART_ID, DATA_BITS, STOP_BITS, PARITY);

    // Turn off FIFO's - we want to do this character by character
    uart_set_fifo_enabled(UART_ID, false);

    // Set up a RX interrupt
    // We need to set up the handler first
    // Select correct interrupt for the UART we are using
    int UART_IRQ = UART_ID == uart0 ? UART0_IRQ : UART1_IRQ;

    // And set up and enable the interrupt handlers
    irq_set_exclusive_handler(UART_IRQ, on_uart_rx);
    irq_set_enabled(UART_IRQ, true);

    // Now enable the UART to send interrupts - RX only
    uart_set_irq_enables(UART_ID, true, false);

    // Initialize SSD1306
    ssd1306_setup();
    while (1)
    {
        // Blink LED
        gpio_put(PICO_DEFAULT_LED_PIN, 1);
        sleep_ms(250);
        gpio_put(PICO_DEFAULT_LED_PIN, 0);
        sleep_ms(250);

    }
}


