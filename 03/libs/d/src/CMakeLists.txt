# sources list
set(src
    "d.cpp"
)

# add s target
add_library(d SHARED)

# bind s headers
target_include_directories(
    d PUBLIC
    $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:include>
)

# bind s sources
target_sources(d PRIVATE ${src})