
#include <chrono>
#include <thread>
#include <fstream>
#include <iostream>

extern "C" uint32_t thumbnailer(void* args, uint32_t size, void* res);

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
  char* out = new char[size];

  if (!input.read(data, size))
  {
    std::cerr << "Couldnt read file " << argv[1] << std::endl;
    return 1;
  }

  uint32_t out_size = thumbnailer(reinterpret_cast<void*>(data), size, reinterpret_cast<void*>(out));

  std::ofstream output(std::string{argv[2]} + "/result_new.jpg", std::ios::binary );
  copy(out, out + out_size, std::ostreambuf_iterator<char>(output));
  output.close();

  delete[] data;
  delete[] out;

  return 0;
}
