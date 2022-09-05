cmake_minimum_required(VERSION 3.12)

project(PROJECT_NAME)

add_executable(executable_name src/main.cpp)
target_compile_features(executable_name PUBLIC cxx_std_20)
