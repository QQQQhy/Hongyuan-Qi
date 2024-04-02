# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "C:/Users/17155/ME433/Pico/pico-sdk/tools/pioasm"
  "C:/Users/17155/ME433/Hongyuan-Qi/HW2/build/pioasm"
  "C:/Users/17155/ME433/Hongyuan-Qi/HW2/build/pico-sdk/src/rp2_common/tinyusb/pioasm"
  "C:/Users/17155/ME433/Hongyuan-Qi/HW2/build/pico-sdk/src/rp2_common/tinyusb/pioasm/tmp"
  "C:/Users/17155/ME433/Hongyuan-Qi/HW2/build/pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp"
  "C:/Users/17155/ME433/Hongyuan-Qi/HW2/build/pico-sdk/src/rp2_common/tinyusb/pioasm/src"
  "C:/Users/17155/ME433/Hongyuan-Qi/HW2/build/pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/Users/17155/ME433/Hongyuan-Qi/HW2/build/pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/Users/17155/ME433/Hongyuan-Qi/HW2/build/pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp${cfgdir}") # cfgdir has leading slash
endif()
