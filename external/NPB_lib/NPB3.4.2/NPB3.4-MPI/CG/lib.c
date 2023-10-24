
#include <stdint.h>

void nas_cg();

uint32_t rfaas_function(void *args, uint32_t size, void *res) {
  nas_cg();
  return 1;
}
