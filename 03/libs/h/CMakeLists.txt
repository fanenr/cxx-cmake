cmake_minimum_required(VERSION 3.26)
project(h VERSION 0.0.1)

add_library(h INTERFACE)
target_include_directories(
    h INTERFACE
    $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:include>
)

# install headers
include(GNUInstallDirs)
install(TARGETS h EXPORT h_export)
install(DIRECTORY "include/" TYPE INCLUDE)

# export libs
include(CMakePackageConfigHelpers)

install(
    EXPORT h_export
    NAMESPACE Arthur::
    FILE "h.cmake"
    DESTINATION "${CMAKE_INSTALL_LIBDIR}/cmake/Arthur"
)

configure_package_config_file(
    "cmake/config.cmake.in"
    "h-config.cmake"
    INSTALL_DESTINATION "${CMAKE_INSTALL_LIBDIR}/cmake/Arthur"
)

write_basic_package_version_file(
    "${CMAKE_CURRENT_BINARY_DIR}/h-config-version.cmake"
    VERSION ${PROJECT_VERSION}
    COMPATIBILITY SameMajorVersion
)

install(
    FILES
    "${CMAKE_CURRENT_BINARY_DIR}/h-config.cmake"
    "${CMAKE_CURRENT_BINARY_DIR}/h-config-version.cmake"

    DESTINATION "${CMAKE_INSTALL_LIBDIR}/cmake/Arthur"
)