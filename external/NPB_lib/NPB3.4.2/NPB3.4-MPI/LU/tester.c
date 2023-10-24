
#include <stddef.h>
#include <stdint.h>

uint32_t rfaas_function(void *args, uint32_t size, void *res);

int main(int argc, char **argv) {
  rfaas_function(NULL, 0, NULL);
  rfaas_function(NULL, 0, NULL);
  rfaas_function(NULL, 0, NULL);
  rfaas_function(NULL, 0, NULL);
  rfaas_function(NULL, 0, NULL);

  return 0;
}
