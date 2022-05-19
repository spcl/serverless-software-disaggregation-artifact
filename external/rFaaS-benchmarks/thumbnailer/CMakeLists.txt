
cmake_minimum_required(VERSION 3.9)
set(CMAKE_CXX_STANDARD 14)
project(thumbnailer LANGUAGES CXX)

add_library(thumbnailer SHARED "function.cpp")

find_package(OpenCV REQUIRED)

target_include_directories(thumbnailer PRIVATE ${OpenCV_INCLUDE_DIRS})
target_link_libraries(thumbnailer PUBLIC ${OpenCV_LIBS})
set_property(TARGET thumbnailer PROPERTY CXX_STANDARD 14)

add_executable(
  test-client "test-client.cpp"
)
target_link_libraries(test-client thumbnailer)

