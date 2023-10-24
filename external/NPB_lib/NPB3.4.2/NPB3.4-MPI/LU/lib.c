
#include <stdint.h>

void nas_lu();

uint32_t rfaas_function(void *args, uint32_t size, void *res) {
  nas_lu();
  return 1;
}
