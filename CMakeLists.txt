cmake_minimum_required(VERSION 2.7.4 FATAL_ERROR)

set(CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}")

project(example)

include(VicAbi)
vic_get_abi(V_ABI)
message(STATUS "V_ABI: ${V_ABI}")
include(VicArchitecture)
vic_get_architecture(V_ARCHITECTURE)
message(STATUS "V_ARCHITECTURE: ${V_ARCHITECTURE}")
include(VicBinaryFormat)
vic_get_binary_format(V_BINARY_FORMAT)
message(STATUS "V_BINARY_FORMAT: ${V_BINARY_FORMAT}")
