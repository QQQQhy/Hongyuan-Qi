cmake_minimum_required(VERSION 3.13)

include(pico_sdk_import.cmake)

project(HW9)

pico_sdk_init()

add_executable(HW9)

target_sources(HW9 PRIVATE HW9.c)

# Pull in our pico_stdlib which pulls in commonly used features
target_link_libraries(HW9 pico_stdlib hardware_irq hardware_uart)
pico_enable_stdio_usb (HW9 1)
pico_enable_stdio_uart (HW9 0)
# create map/bin/hex file etc.
pico_add_extra_outputs(HW9)