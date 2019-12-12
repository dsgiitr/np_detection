cmake_minimum_required(VERSION 3.10.2)
project(CheckCUDA CUDA)
file(WRITE "${CMAKE_CURRENT_BINARY_DIR}/result.cmake"
  "set(CMAKE_CUDA_COMPILER \"${CMAKE_CUDA_COMPILER}\")\n"
  )
