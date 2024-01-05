cmake_minimum_required(VERSION 3.26)
project(sample VERSION 0.0.1)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_EXTENSIONS off)
set(CMAKE_CXX_STANDARD_REQUIRED on)
set(CMAKE_EXPORT_COMPILE_COMMANDS on)

# ----------------------------------------
# output path
# ----------------------------------------
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin")

# ----------------------------------------
# use libs libh libd
# ----------------------------------------
set(Arthur_DIR "${PROJECT_SOURCE_DIR}/../install/lib64/cmake/Arthur")
set(CMAKE_PREFIX_PATH ${Arthur_DIR} ${CMAKE_PREFIX_PATH})

add_executable(main "src/main.cc")

find_package(s REQUIRED 0.0.1)
find_package(d REQUIRED 0.0.1)
find_package(h REQUIRED 0.0.1)

target_link_libraries(
    main
    PRIVATE Arthur::s
    PRIVATE Arthur::d
    PRIVATE Arthur::h
)