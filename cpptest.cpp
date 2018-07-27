#include <stdio.h>
#include "custom_lib.h"


int main()
{
  printf("%d\n", calc(3, 3));
  printf("%f\n", calcf(2.5, 3.0));
  printf("%s\n", get_string());
  return 0;
}
