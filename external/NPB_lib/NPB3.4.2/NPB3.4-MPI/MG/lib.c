
#include <stdint.h>

void nas_mg();

uint32_t rfaas_function(void *args, uint32_t size, void *res) {
  nas_mg();
  return 1;
}
