cmake_minimum_required(VERSION 3.11) 

project(cmake_script)

# 普通使用，就只是把函数写进 .cmake 
include(script/MyFunctions.cmake)

print_welcome_message("CharlesHsu")

# 也可以在 .cmake 中定义变量
include(script/MyConfig.cmake)

# 使用 MY_VARIABLE
message(STATUS "MY_VARIABLE is: " ${MY_VARIABLE})

add_executable(cmake_script main.cpp)