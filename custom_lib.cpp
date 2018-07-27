#include "custom_lib.h"
#include <iostream>

int calc(int i, int j)
{
  int res = 1;
  int k=0;
  for(; k < j; ++k)
  {
    res *= i;
  }
  std::cout << "From c++:" << res << std::endl;
  return res;
}

float calcf(float i, float j)
{
  float res = 1;
  int k=0;
  for(; k < j; ++k)
  {
    res *= i;
  }
  return res;
}

const char* get_string()
{
  return "The C-string";
}
