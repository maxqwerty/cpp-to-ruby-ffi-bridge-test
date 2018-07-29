#include "wrapper.h"
#include "custom_lib.h"

int lib_calc(int i, int j)
{
  return calc(i, j);
}

float lib_calcf(float i, float j)
{
  return calcf(i, j);
}

const char* lib_get_string()
{
  return get_string();
}

const char* lib_get_lib_string()
{
  return get_lib_string().c_str();
}
