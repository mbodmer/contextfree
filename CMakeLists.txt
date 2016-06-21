cmake_minimum_required(VERSION 3.0)
set(CMAKE_MODULE_PATH ${CMAKE_INCLUDE_PATH} ${CMAKE_CURRENT_LIST_DIR}/cmake)

project(cfdg_graphics NONE)

find_package(CFDG)

add_subdirectory(cfdgintro)
