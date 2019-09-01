cmake_minimum_required(VERSION 3.10)

set(CMAKE_CXX_COMPILER "D:/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/x86_64-w64-mingw32-g++.exe")
set(CMAKE_C_COMPILER "D:/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/x86_64-w64-mingw32-gcc.exe")
set(CMAKE_Fortran_COMPILER "D:/mingw-w64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/bin/x86_64-w64-mingw32-gfortran.exe")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -static")

project(GoogleTestEnv)

################################
# GTest
################################
add_subdirectory(googletest)
enable_testing()
include_directories(${gtest_SOURCE_DIR}/include ${gtest_SOURCE_DIR})

add_executable(${PROJECT_NAME} main.cpp)
target_link_libraries(${PROJECT_NAME} gtest gtest_main)
