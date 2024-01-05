# sources list
set(src
    "s.cpp"
)

# add s target
add_library(s STATIC)

# bind s headers
target_include_directories(
    s PUBLIC
    $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:include>
)

# bind s sources
target_sources(s PRIVATE ${src})