#include "wrapper.h"
#include <stdio.h>

int main()
{
  printf("%d\n", lib_calc(5, 3));
  printf("%f\n", lib_calcf(5.5, 3.5));
  printf("%s\n", lib_get_string());
  printf("%s\n", lib_get_lib_string());
  return 0;
}

