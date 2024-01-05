cmake_minimum_required(VERSION 3.26)
project(03 VERSION 0.0.1)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_EXTENSIONS off)
set(CMAKE_CXX_STANDARD_REQUIRED on)
set(CMAKE_EXPORT_COMPILE_COMMANDS on)

# ----------------------------------------
# linker
# ----------------------------------------
find_program(GOLD NAMES ld.gold)

if(GOLD)
    add_link_options("-fuse-ld=gold")
endif()

# ----------------------------------------
# output path
# ----------------------------------------
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin")
set(CMAKE_INSTALL_PREFIX "${CMAKE_CURRENT_LIST_DIR}/install")

# ----------------------------------------
# build mode
# ----------------------------------------
option(IS_DEBUG "whether to open debug mode" on)

if(NOT IS_DEBUG)
    set(CMAKE_BUILD_TYPE "Release")
else()
    set(CMAKE_BUILD_TYPE "Debug")
endif()

# ----------------------------------------
# configure
# ----------------------------------------
set(DEBUG on)
set(IS_LTO off)
set(AUTHOR "Arthur")

configure_file("config.h.in" "config.h")

# ----------------------------------------
# byte order
# ----------------------------------------
if(CMAKE_CXX_BYTE_ORDER STREQUAL "LITTLE_ENDIAN")
    # little endian
else()
    # big endian
endif()

# ----------------------------------------
# subprojects: libs libd libh
# ----------------------------------------
add_subdirectory(libs/s)
add_subdirectory(libs/d)
add_subdirectory(libs/h)

# ----------------------------------------
# src
# ----------------------------------------
add_subdirectory(src)