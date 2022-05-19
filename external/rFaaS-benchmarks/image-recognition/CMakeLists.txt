
cmake_minimum_required(VERSION 3.9)
set(CMAKE_CXX_STANDARD 14)
project(image-recognition LANGUAGES CXX)

add_library(image-recognition SHARED "function.cpp")

find_package(OpenCV REQUIRED)
find_package(Torch REQUIRED)
find_package(TorchVision REQUIRED)

target_include_directories(image-recognition PRIVATE ${OpenCV_INCLUDE_DIRS})
target_link_libraries(image-recognition PUBLIC TorchVision::TorchVision "${TORCH_LIBRARIES}" ${OpenCV_LIBS})
set_property(TARGET image-recognition PROPERTY CXX_STANDARD 14)

add_executable(
  test-client "test-client.cpp"
)
target_link_libraries(test-client image-recognition)

