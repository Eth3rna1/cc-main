cmake_minimum_required(VERSION 3.15)

project(cc-main LANGUAGES C)

add_subdirectory(vendor/cargs)

add_executable(cc-main
    src/main.c
)

target_link_libraries(cc-main PRIVATE cargs)
