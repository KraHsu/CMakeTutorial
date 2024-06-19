file(GLOB_RECURSE srcs CONFIGURE_DEPENDS src/*.cpp include/*.h)
add_library(dependency2 STATIC ${srcs})
target_include_directories(dependency2 PUBLIC include)