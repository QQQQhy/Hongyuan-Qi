#include <stdio.h>
#include <string.h> // for memset
#include "pico/stdlib.h"
#include "hardware/uart.h"
#include "hardware/irq.h"

#define LED_PIN PICO_DEFAULT_LED_PIN
#define UART_ID uart0
#define BAUD_RATE 115200
#define DATA_BITS 8
#define STOP_BITS 1
#define PARITY UART_PARITY_NONE
#define UART_TX_PIN 0
#define UART_RX_PIN 1
#define MOTOR_IN4 9
#define MOTOR_IN3 10

static int chars_rxed = 0;

void setup_gpio() {
    gpio_init(LED_PIN);
    gpio_init(MOTOR_IN3);
    gpio_init(MOTOR_IN4);
    gpio_set_dir(LED_PIN, GPIO_OUT);
    gpio_set_dir(MOTOR_IN3, GPIO_OUT);
    gpio_set_dir(MOTOR_IN4, GPIO_OUT);
}

void setup_uart() {
    uart_init(UART_ID, BAUD_RATE);
    gpio_set_function(UART_TX_PIN, GPIO_FUNC_UART);
    gpio_set_function(UART_RX_PIN, GPIO_FUNC_UART);

    uart_set_hw_flow(UART_ID, false, false);
    uart_set_format(UART_ID, DATA_BITS, STOP_BITS, PARITY);
    uart_set_fifo_enabled(UART_ID, false);

    int UART_IRQ = UART_ID == uart0 ? UART0_IRQ : UART1_IRQ;
    irq_set_exclusive_handler(UART_IRQ, on_uart_rx);
    irq_set_enabled(UART_IRQ, true);
    uart_set_irq_enables(UART_ID, true, false);
}

void control_motor(uint8_t ch) {
    switch (ch) {
        case '4':
            gpio_put(LED_PIN, true);
            gpio_put(MOTOR_IN3, true);
            gpio_put(MOTOR_IN4, false);
            break;
        case '5':
            gpio_put(LED_PIN, true);
            gpio_put(MOTOR_IN3, false);
            gpio_put(MOTOR_IN4, true);
            break;
        default:
            gpio_put(LED_PIN, false);
            gpio_put(MOTOR_IN3, true);
            gpio_put(MOTOR_IN4, true);
            break;
    }
}

void on_uart_rx() {
    while (uart_is_readable(UART_ID)) {
        uint8_t ch = uart_getc(UART_ID);
        control_motor(ch);
    }
}

int main() {
    stdio_init_all();
    setup_gpio();
    setup_uart();

    uart_puts(UART_ID, "\nHello, uart interrupts\n");

    while (true) {
        tight_loop_contents();
    }
}
