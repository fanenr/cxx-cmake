cmake_minimum_required(VERSION 3.21)
project(
    "cmake-example-01"
    VERSION 0.0.1
    DESCRIPTION "just a example"
    LANGUAGES CXX
)

add_executable(01)
target_sources(01 PRIVATE src/main.cpp)