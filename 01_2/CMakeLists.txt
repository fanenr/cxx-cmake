cmake_minimum_required(VERSION 3.21)
project(
    "cmake-example-01_2"
    VERSION 0.0.1
    DESCRIPTION "just a example"
    LANGUAGES CXX
)

set(CMAKE_EXPORT_COMPILE_COMMANDS on)

add_subdirectory(src)
# add_subdirectory(src/sub_src)