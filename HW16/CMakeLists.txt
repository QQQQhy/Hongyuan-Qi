cmake_minimum_required(VERSION 3.13)

include(pico_sdk_import.cmake)

project(HW16)

pico_sdk_init()

add_executable(HW16)

target_sources(HW16 PRIVATE HW16.c )

# Pull in our pico_stdlib which pulls in commonly used features
target_link_libraries(HW16 pico_stdlib hardware_pwm)
pico_enable_stdio_usb (HW16 1)
pico_enable_stdio_uart (HW16 0)
# create map/bin/hex file etc.
pico_add_extra_outputs(HW16)