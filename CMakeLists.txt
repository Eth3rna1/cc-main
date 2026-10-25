cmake_minimum_required(VERSION 3.15)

project(cc-main LANGUAGES C)

add_subdirectory(vendor/cargs)

file(GLOB SOURCES CONFIGURE_DEPENDS
    "${CMAKE_CURRENT_SOURCE_DIR}/src/*.c"
)

add_executable(cc-main ${SOURCES})

target_link_libraries(cc-main PRIVATE cargs)
