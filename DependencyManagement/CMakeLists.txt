cmake_minimum_required(VERSION 3.11) 

project(dependency_management)

add_subdirectory(Dependency1)
add_subdirectory(Dependency2)

add_executable(dependency_management main.cpp)

target_link_libraries(dependency_management PUBLIC dependency1)
target_link_libraries(dependency_management PUBLIC dependency2)

# 尝试使用 cmake -B build && cmake --build build --parallel 4

# .
# ├── CMakeLists.txt
# ├── Dependency1
# │  ├── CMakeLists.txt
# │  ├── include
# │  │  └── Dependency1
# │  │     ├── Module1.h
# │  │     └── Module2.h
# │  └── src
# │     ├── Module1.cpp
# │     └── Module2.cpp
# ├── Dependency2
# │  ├── CMakeLists.txt
# │  ├── include
# │  │  └── Dependency2
# │  │     ├── Module1.h
# │  │     └── Module2.h
# │  └── src
# │     ├── Module1.cpp
# │     └── Module2.cpp
# └── main.cpp