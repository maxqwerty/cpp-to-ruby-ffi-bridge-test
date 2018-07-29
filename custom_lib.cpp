#include "custom_lib.h"

int calc(int i, int j)
{
  int res = 1;
  int k=0;
  for(; k < j; ++k)
  {
    res *= i;
  }
  return res;
}

float calcf(float i, float j)
{
  return i * j;
}

const char* get_string()
{
  return "The C-string";
}

std::string get_lib_string()
{
  return std::string("The C++ string class");
}

