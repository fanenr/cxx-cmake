cmake_minimum_required(VERSION 3.26)
project(d VERSION 0.0.1)

# config build type
if(DEFINED IS_DEBUG)
    if(NOT IS_DEBUG)
        set(CMAKE_BUILD_TYPE "Release")
    else()
        set(CMAKE_BUILD_TYPE "Debug")
    endif()
else()
    option(IS_DEBUG "whether to open debug mode" on)
    set(CMAKE_BUILD_TYPE "Debug")
endif()

# build target d
add_subdirectory(src)

# install archive and headers
include(GNUInstallDirs)
install(TARGETS d EXPORT d_export)
install(DIRECTORY "include/" TYPE INCLUDE)

# export libs
include(CMakePackageConfigHelpers)

install(
    EXPORT d_export
    NAMESPACE Arthur::
    FILE "d.cmake"
    DESTINATION "${CMAKE_INSTALL_LIBDIR}/cmake/Arthur"
)

configure_package_config_file(
    "cmake/config.cmake.in"
    "d-config.cmake"
    INSTALL_DESTINATION "${CMAKE_INSTALL_LIBDIR}/cmake/Arthur"
)

write_basic_package_version_file(
    "${CMAKE_CURRENT_BINARY_DIR}/d-config-version.cmake"
    VERSION ${PROJECT_VERSION}
    COMPATIBILITY SameMajorVersion
)

install(
    FILES
    "${CMAKE_CURRENT_BINARY_DIR}/d-config.cmake"
    "${CMAKE_CURRENT_BINARY_DIR}/d-config-version.cmake"

    DESTINATION "${CMAKE_INSTALL_LIBDIR}/cmake/Arthur"
)