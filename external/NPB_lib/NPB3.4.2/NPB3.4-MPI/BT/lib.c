
#include <stdint.h>

void nas_bt();

uint32_t rfaas_function(void *args, uint32_t size, void *res) {
  nas_bt();
  return 1;
}
