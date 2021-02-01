cmake_minimum_required (VERSION 3.1)
cmake_policy(VERSION 3.1)

project(dynamic_cast_dart_issue)

add_library(Lib SHARED Lib.cpp)

add_executable(Main Main.cpp)
target_link_libraries(Main Lib)