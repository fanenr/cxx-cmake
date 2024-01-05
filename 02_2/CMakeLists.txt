cmake_minimum_required(VERSION 3.21)
project(02_2)

set(cvar "a" CACHE STRING "a cache variable")
# set(cvar "a" CACHE INTERNAL "a cache variable")
add_subdirectory(sub)

message("in top, cvar: $CACHE{cvar}")