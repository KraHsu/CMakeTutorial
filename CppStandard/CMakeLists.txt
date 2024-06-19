cmake_minimum_required(VERSION 3.11) 

# 我们可以通过修改 CMAKE_CXX_STANDARD 命令更改编译时所使用的cpp标准
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

project(cpp_standard)

add_executable(cpp_standard main.cpp)