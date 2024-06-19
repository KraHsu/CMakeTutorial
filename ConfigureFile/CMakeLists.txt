cmake_minimum_required(VERSION 3.11) 

project(configure_file_)

set(VARIALBLE_VALUE_X "\"value from cmake\"")
configure_file(main.h.in ${CMAKE_BINARY_DIR}/main.h)

add_executable(configure_file_ main.cpp)