#include "custom_lib.h"
#include <iostream>

int main()
{
  std::cout << calc(5, 3) << std::endl;
  std::cout << calcf(5.5, 3.5) << std::endl;
  std::cout << get_string() << std::endl;
  std::cout << get_lib_string() << std::endl;
  return 0;
}
