# 任何项目的最顶层 CMakeLists.txt 必须首先使用 cmake_minimum_required() 命令
# 指定最低 CMake 版本。这会建立策略设置并确保以下 CMake 函数使用兼容版本的 CMake 运行。
cmake_minimum_required(VERSION 3.11) 

# 要启动一个项目，我们使用 project() 命令来设置项目名称。每个项目都需要此调用，并且
# 应在 cmake_minimum_required 之后立即调用。正如我们稍后将看到的，此命令还可用于
# 指定其他项目级别的信息，例如语言或版本号。
project(hello_world)

# 最后， add_executable() 命令告诉 CMake 使用指定的源代码文件创建可执行文件。
add_executable(hello_world main.cpp)