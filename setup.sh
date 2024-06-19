#!/bin/bash

# 要克隆的 GitHub 仓库 URL
REPO_URL="https://github.com/KraHsu/CMakeTutorialForRM.git"

# 需要的最低 CMake 版本
REQUIRED_CMAKE_VERSION="3.1"

# 检查是否安装了 CMake
if ! command -v cmake &> /dev/null; then
    echo "Error: CMake is not installed."
    exit 1
fi

# 获取已安装的 CMake 版本
INSTALLED_CMAKE_VERSION=$(cmake --version | grep -oP "\d+\.\d+\.\d+" | head -n 1)

# 比较版本号的函数
version_greater_equal() {
    [ "$(printf '%s\n' "$1" "$2" | sort -V | head -n 1)" = "$2" ]
}

# 检查 CMake 版本是否满足要求
if ! version_greater_equal "$INSTALLED_CMAKE_VERSION" "$REQUIRED_CMAKE_VERSION"; then
    echo "Error: CMake version ${INSTALLED_CMAKE_VERSION} is less than the required version ${REQUIRED_CMAKE_VERSION}."
    exit 1
fi

# 克隆 GitHub 仓库
if git clone "$REPO_URL"; then
    echo "Repository cloned successfully."
else
    echo "Error: Failed to clone the repository."
    exit 1
fi
