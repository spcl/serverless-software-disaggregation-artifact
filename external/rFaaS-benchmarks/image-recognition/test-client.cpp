
#include <chrono>
#include <thread>
#include <fstream>
#include <iostream>

#include "function.hpp"

extern "C" uint32_t image_recognition(void* args, uint32_t size, void* res);

int main(int argc, char ** argv)
{
  std::ifstream input(argv[1], std::ios::binary | std::ios::ate);

  if(input.fail())
  {
    std::cerr << "Couldnt read file " << argv[1] << std::endl;
    return 1;
  }

  std::streamsize size = input.tellg();
  input.seekg(0, std::ios::beg);
  int result;
  char* data = new char[size];

  if (!input.read(data, size))
  {
    std::cerr << "Couldnt read file " << argv[1] << std::endl;
    return 1;
  }

  image_recognition(reinterpret_cast<void*>(data), size, reinterpret_cast<void*>(&result));

  std::cerr << result << std::endl;

  delete[] data;

  return 0;
}
