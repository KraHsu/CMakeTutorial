cmake_minimum_required(VERSION 3.11) 

project(function_example)

# 示例1：简单函数
function(print_header header)
    message(STATUS "----" ${header} "----")
endfunction()

print_header("我就是一个简单函数")

# 示例2：带默认参数的函数
print_header("带默认参数的函数")

function(greet_user name)
    # 检查是否提供了第二个参数
    if(ARGC GREATER 1)
        set(greeting ${ARGV1})
    else()
        set(greeting "Hello")
    endif()
    message(STATUS "${greeting}, ${name}!")
endfunction()

# 调用自定义函数
greet_user("CharlesHsu")
greet_user("CharlesHsu" "Hi")

# 示例3：修改父作用域变量
# 有时我们希望在函数内部修改外部变量，可以使用PARENT_SCOPE：
print_header("修改父作用域变量")

function(add_number a b result)
    math(EXPR sum "${a} + ${b}")
    set(${result} ${sum} PARENT_SCOPE)
endfunction()

# 调用自定义函数
add_number(3 5 sum)
message(STATUS "The sum is ${sum}")

# 示例4：使用可变参数列表
# CMake函数支持可变参数列表，可以接受任意数量的参数：
print_header("使用可变参数列表")

function(concatenate_strings output_var)
    set(result "")
    foreach(arg IN LISTS ARGN)
        set(result "${result}${arg}")
    endforeach()
    set(${output_var} "${result}" PARENT_SCOPE)
endfunction()

# 调用自定义函数
concatenate_strings(concatenated "Hello, " "world" "!")
message(STATUS "${concatenated}")


add_executable(function_example main.cpp)