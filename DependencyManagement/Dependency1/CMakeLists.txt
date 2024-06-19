file(GLOB_RECURSE srcs CONFIGURE_DEPENDS src/*.cpp include/*.h)
add_library(dependency1 STATIC ${srcs})
target_include_directories(dependency1 PUBLIC include)