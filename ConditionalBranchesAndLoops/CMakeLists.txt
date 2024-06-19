cmake_minimum_required(VERSION 3.11) 

project(conditional_branches_and_loops)

message(STATUS "---- Below is if-condition ----")

set(MY_VAR "YES")
if(MY_VAR)
  message(STATUS "MY_VAR is true")
endif()

set(THIS_VAR "")
if(THIS_VAR)
  message(STATUS "THIS_VAR is true")
else()
  message(STATUS "THIS_VAR is false")
endif()

# 使用文件存在性检查
if(EXISTS "${CMAKE_SOURCE_DIR}/myfile.txt")
  message(STATUS "myfile.txt exists")
endif()

# 使用更复杂的条件
set(NUM 100)
if(NUM GREATER 99 AND MY_VAR STREQUAL "YES")
  message(STATUS "NUM is greater than 99 and MY_VAR is YES")
endif()

message(STATUS "---- Below is loop ----")

foreach(item IN ITEMS item1 item2 item3)
  message(STATUS "Processing ${item}")
endforeach()

set(ITEM_LIST "apple" "banana" "cherry")
foreach(item IN LISTS ITEM_LIST)
  message(STATUS "Found fruit: ${item}")
endforeach()

foreach(i RANGE 1 5)
  message(STATUS "Number ${i}")
endforeach()

set(value 0)
while(value LESS 5)
  message(STATUS "Value is ${value}")
  math(EXPR value "${value} + 1")
endwhile()

add_executable(conditional_branches_and_loops main.cpp)

# 尝试使用 cmake -B build && cmake --build build --parallel 4