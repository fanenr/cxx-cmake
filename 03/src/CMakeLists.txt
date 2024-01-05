# sources list
set(src
    "main.cpp"
    "print.cpp")

add_executable(03)

# 03 headers
target_include_directories(03 PRIVATE "../include")
target_include_directories(03 PRIVATE ${PROJECT_BINARY_DIR})

# 03 sources
target_sources(03 PRIVATE ${src})

# link libh libs libd
target_link_libraries(03 PRIVATE h)
target_link_libraries(03 PRIVATE s)
target_link_libraries(03 PRIVATE d)

# do something between the build phase
#[[
add_custom_command(
    TARGET 03
    PRE_BUILD
    COMMAND echo "start to build 03"
    PRE_LINK
    COMMAND echo "start to link  03"
    POST_BUILD
    COMMAND echo "finish building 03"
)
#]]

# install
install(TARGETS 03)
