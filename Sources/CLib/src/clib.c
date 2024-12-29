#include <stdio.h>
#include <stdlib.h>
#include <clib.h>

struct test_t;

int print_test_size(struct test_t test) {
  printf("sizeof test: %lu\n", sizeof(test));
  printf("test.test: %i\n", test.test);
  printf("test.buh: %i\n", test.buh);
  return 0;
}
