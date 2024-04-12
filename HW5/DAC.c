#include <stdio.h>
#include "pico/stdlib.h"
#include "hardware/spi.h"
#define PI 3.14159265358979323846
#define WAVEFORM_SIZE 100

static volatile float SineWaveform[WAVEFORM_SIZE];
static volatile float TriWaveform[WAVEFORM_SIZE];

void makeSinWaveform() {
    float amplitude = (3.3 - 0) / 2.0;//1.65v
    float offset = (3.3 + 0) / 2;
    
    for (int i = 0; i < WAVEFORM_SIZE; i++) {
        float theta = (float)i / WAVEFORM_SIZE * (2.0 * PI * 2.0);//two wave cycles
        SineWaveform[i] = amplitude * sin(theta) + offset;
    }
}

void makeTriWaveform() {
    int halfSize = WAVEFORM_SIZE / 2;
    float maxValue = 3.3;
    float rise = maxValue / halfSize;

    for (int i = 0; i < halfSize; i++) {
        TriWaveform[i] = rise * i;
    }

    for (int i = halfSize; i < WAVEFORM_SIZE; i++) {
        TriWaveform[i] = maxValue - rise * (i - halfSize);
    }
}

#ifdef PICO_DEFAULT_SPI_CSN_PIN
static inline void cs_select() {
    asm volatile("nop \n nop \n nop");
    gpio_put(PICO_DEFAULT_SPI_CSN_PIN, 0);  // Active low
    asm volatile("nop \n nop \n nop");
}

static inline void cs_deselect() {
    asm volatile("nop \n nop \n nop");
    gpio_put(PICO_DEFAULT_SPI_CSN_PIN, 1);
    asm volatile("nop \n nop \n nop");
}
#endif



static void write_register(bool channel, uint16_t data){
    //channel = 0 is A, 1 is B
    data = data | channel << 15 | (0b111<<12);
    uint8_t buf[2];
    buf[0] = data >> 8;  //first 8 bit num send 
    buf[1] = data;
    cs_select(); //makes pin to low
    spi_write_blocking(spi_default, buf, 2);
    cs_deselect();
}


int main() {
    stdio_init_all();
    spi_init(spi_default, 1000000);
    gpio_set_function(PICO_DEFAULT_SPI_RX_PIN, GPIO_FUNC_SPI);
    gpio_set_function(PICO_DEFAULT_SPI_SCK_PIN, GPIO_FUNC_SPI);
    gpio_set_function(PICO_DEFAULT_SPI_TX_PIN, GPIO_FUNC_SPI);
    // Chip select is active-low, so we'll initialise it to a driven-high state
    gpio_init(PICO_DEFAULT_SPI_CSN_PIN);
    gpio_set_dir(PICO_DEFAULT_SPI_CSN_PIN, GPIO_OUT);
    gpio_put(PICO_DEFAULT_SPI_CSN_PIN, 1);
    makeSinWaveform();
    makeTriWaveform();
    while (1) {
        for (int i = 0; i < WAVEFORM_SIZE; i++) {
            uint16_t sineData = (uint16_t)(SineWaveform[i] * 1023 / 3.3);
            uint16_t triData = (uint16_t)(TriWaveform[i] * 1023 / 3.3);

            write_register(0, sineData); 
            write_register(1,triData); 
            sleep_ms(5);
        }
    }
}