cmake_minimum_required(VERSION 3.8) 

project(calculate)

# 加法
set(A 5)
set(B 3)
math(EXPR RESULT "${A} + ${B}")
message(STATUS "5 + 3 = ${RESULT}")  # 输出 8

# 位运算
math(EXPR POWER_RESULT "2 ^ 3")
message(STATUS "2^3 = ${POWER_RESULT}")  # 输出 1

# 综合运算表达式
set(C 10)
set(D 2)
math(EXPR COMPLEX_RESULT "(${C} * ${D}) + (${A} / ${B})")
message(STATUS "Complex result: ${COMPLEX_RESULT}")  # 输出 21

add_executable(calculate main.cpp)

# 尝试使用 cmake -B build && cmake --build build --parallel 4