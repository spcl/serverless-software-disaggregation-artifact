
#include <stdint.h>

void nas_ep();

uint32_t rfaas_function(void *args, uint32_t size, void *res) {
  nas_ep();
  return 1;
}
