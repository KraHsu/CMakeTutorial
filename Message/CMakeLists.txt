cmake_minimum_required(VERSION 3.11) 

project(message_)

message("Hello World First!")
message(STATUS "Configuring the project...")
message(WARNING "This is a warning message!")
message(SEND_ERROR "Error: Missing required library!")
message(AUTHOR_WARNING "This code is obsolete and should be updated.")
message(FATAL_ERROR "Fatal error: cannot continue!")

add_executable(message_ main.cpp)

# 尝试使用 cmake -B build && cmake --build build --parallel 4