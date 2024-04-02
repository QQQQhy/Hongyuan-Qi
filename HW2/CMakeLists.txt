cmake_minimum_required(VERSION 3.13)

include(pico_sdk_import.cmake)

project(HW2)

pico_sdk_init()

add_executable(blink)

target_sources(blink PRIVATE blink.c)

# Pull in our pico_stdlib which pulls in commonly used features
target_link_libraries(blink pico_stdlib)

# create map/bin/hex file etc.
pico_add_extra_outputs(blink)