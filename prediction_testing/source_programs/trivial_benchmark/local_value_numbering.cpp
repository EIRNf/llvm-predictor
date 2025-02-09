// expected to replace: 850

#include "stdio.h"
#include "time.h"
#include "stdlib.h"
#include <iostream>
#include <chrono>
using namespace std;

volatile int no_optimize=0;

// From https://stackoverflow.com/questions/33058848/generate-a-random-double-between-1-and-1
/* generate a random floating point number from min to max */
double randfrom(double min, double max) 
{
    double range = (max - min); 
    double div = RAND_MAX / range;
    return min + (rand() / div);
}

double op_function(double a, double b, double c, double d, double e, double f, double g, double h, double i, double j) {
  no_optimize += 1;
  // Start optimization range
    d = h + g;
    e = g + i;
    c = j - j;
    a = a - f;
    e = h + h;
    b = j + i;
    c = h + e;
    e = g - h;
    b = i - j;
    d = h - i;
    b = h + h;
    e = h + e;
    b = j + d;
    b = g + g;
    e = j - g;
    c = g + g;
    c = i + i;
    e = h + g;
    f = g - f;
    a = h - i;
    e = g + f;
    a = j + i;
    b = j + h;
    a = h - f;
    c = g + h;
    c = g + f;
    d = h + d;
    a = g - i;
    e = h + j;
    b = i + i;
    c = f - h;
    b = g + j;
    d = h + f;
    a = f - g;
    e = f + j;
    a = g - g;
    e = g - g;
    b = j + j;
    b = j - i;
    e = f + g;
    b = i + f;
    b = g - g;
    e = h + f;
    d = j + g;
    e = i + i;
    d = h - f;
    d = i - g;
    a = f - h;
    d = h - h;
    a = j + g;
    d = f + g;
    d = f + i;
    c = h + g;
    e = f + g;
    d = f - h;
    a = h - g;
    c = i + g;
    d = h + j;
    d = j + j;
    a = f - g;
    c = h - i;
    d = i + j;
    d = h + i;
    c = g - h;
    c = f + g;
    d = g + j;
    b = g + j;
    c = g - f;
    c = g - f;
    e = g + h;
    f = j + h;
    d = i + f;
    b = g + h;
    a = f + f;
    d = f + j;
    b = i + f;
    b = f - f;
    a = g - g;
    d = h + f;
    e = h + f;
    b = g - i;
    a = f - f;
    d = j + f;
    a = i + j;
    c = f + f;
    g = h + i;
    c = i - h;
    b = g - j;
    b = h + i;
    c = g + i;
    a = i - g;
    d = j - f;
    a = f + j;
    c = i + i;
    b = g - g;
    c = g + i;
    b = h + j;
    d = g + h;
    c = g - g;
    a = g - i;
    b = f + h;
    d = h + g;
    b = g - e;
    b = i + h;
    c = h + j;
    a = i - f;
    d = g - f;
    d = h - i;
    b = h - j;
    c = i + h;
    e = f - i;
    b = f + i;
    e = f - i;
    b = j + i;
    b = i + g;
    a = j + f;
    c = i - g;
    d = j + h;
    b = f + j;
    a = i - h;
    e = f - f;
    a = j - f;
    b = h - j;
    a = f - i;
    a = h - h;
    d = h + c;
    d = g - g;
    d = g - h;
    b = g + i;
    b = g + j;
    c = i - f;
    b = h - i;
    a = h - g;
    a = j - f;
    e = a + h;
    b = j + g;
    d = h + i;
    c = i - g;
    c = h - j;
    a = j - j;
    e = h + h;
    c = h + h;
    c = g - g;
    c = f + h;
    d = f + i;
    b = i - f;
    c = g - j;
    b = h + f;
    a = f + f;
    c = h + h;
    e = f - j;
    e = i - j;
    b = h - j;
    b = g + f;
    b = g + g;
    c = i + g;
    b = h + j;
    d = h - g;
    g = h - g;
    c = h + f;
    e = g - j;
    d = h - g;
    d = j - i;
    d = g + i;
    a = j + j;
    b = g + f;
    d = i - h;
    e = f - h;
    c = g + g;
    c = i - g;
    a = g - h;
    c = h + g;
    b = h + g;
    e = j + j;
    b = h - j;
    c = g + i;
    b = f + j;
    b = g - j;
    a = f + i;
    b = f - h;
    d = i - j;
    b = h + i;
    c = i - i;
    b = g - j;
    e = j - f;
    c = g - g;
    c = i + f;
    c = j - i;
    b = h - j;
    e = f - f;
    d = i + i;
    b = h + i;
    b = g - i;
    e = h + h;
    b = f - j;
    c = g + i;
    a = i - h;
    c = j + g;
    d = g - g;
    a = h - g;
    a = j + h;
    e = i + i;
    e = h - f;
    c = i - g;
    d = g + g;
    c = g - h;
    b = f + j;
    c = h - g;
    e = g - g;
    d = g + g;
    i = h + f;
    b = i - i;
    a = h + f;
    a = i + h;
    c = i - h;
    a = f + h;
    e = g - h;
    e = h - i;
    c = j + i;
    a = i + i;
    a = f + j;
    e = i + i;
    e = h - j;
    a = h + h;
    a = f - f;
    a = f + j;
    a = j - i;
    c = h + i;
    e = g + f;
    c = g - f;
    d = g + h;
    c = i - h;
    a = c - h;
    c = j + i;
    e = f - i;
    d = h + h;
    b = f - j;
    d = i - i;
    b = g + h;
    e = j - g;
    a = f + f;
    b = i + j;
    a = i - g;
    e = i + f;
    b = f - h;
    a = f - f;
    e = j + g;
    b = f - i;
    e = f + h;
    a = h + g;
    d = g + j;
    c = i + f;
    e = i - j;
    d = j - j;
    c = g + h;
    c = g + i;
    c = h + g;
    a = i + h;
    c = j + f;
    c = f + h;
    d = i - h;
    d = f - j;
    e = g + i;
    d = f - j;
    b = h - h;
    b = h - g;
    d = g + i;
    d = f + j;
    c = g - f;
    e = g + i;
    d = j - i;
    c = j - h;
    b = f + j;
    a = f - g;
    c = j + j;
    a = i - h;
    e = i + h;
    c = f - f;
    b = j - g;
    d = f + f;
    b = g + h;
    b = h + g;
    e = f + f;
    e = f + f;
    a = f + g;
    e = h - g;
    d = g - i;
    d = j + h;
    d = f + i;
    c = f + i;
    e = h - h;
    d = h - g;
    c = f - i;
    d = g - f;
    d = g - f;
    c = j - h;
    a = g + g;
    e = f + i;
    d = i - i;
    a = j - g;
    g = j + i;
    c = f - i;
    a = h + h;
    b = g - j;
    b = h + g;
    b = f + g;
    e = g - g;
    d = h - g;
    e = h + h;
    c = i - f;
    c = h - h;
    b = j + i;
    e = a + f;
    e = f + j;
    d = f - g;
    e = f - i;
    b = i - j;
    d = h - j;
    e = j + h;
    b = a + i;
    e = g + g;
    a = i + i;
    a = i - h;
    b = f + j;
    d = i - g;
    d = g + i;
    c = j - h;
    c = f + g;
    b = i - f;
    d = g - f;
    b = j - a;
    d = i - i;
    d = f + j;
    a = f + h;
    e = d - f;
    b = f - h;
    a = i + i;
    a = f + i;
    b = g - i;
    d = i - j;
    d = j + i;
    e = f + g;
    d = g + h;
    e = i - h;
    a = h - h;
    a = i + h;
    a = f + f;
    e = j - i;
    e = g - i;
    b = i + i;
    d = f + h;
    b = h + j;
    c = g + g;
    c = f + i;
    a = j - j;
    c = i + j;
    c = f + i;
    a = j + i;
    e = j - j;
    c = h + f;
    c = g - g;
    e = h - f;
    a = g + i;
    c = i - i;
    a = i - h;
    a = h - h;
    c = f + j;
    d = i - g;
    d = f - f;
    c = h - i;
    a = j - i;
    c = j - h;
    c = i - h;
    d = g + j;
    a = i + i;
    a = i + f;
    c = h - h;
    d = j + i;
    e = h + h;
    c = f - j;
    b = i - h;
    a = i + j;
    b = i + h;
    d = f + f;
    c = h + f;
    b = h + h;
    a = i - i;
    b = j + g;
    c = j - g;
    e = g - f;
    e = i + f;
    b = f + j;
    d = g + j;
    c = i + h;
    b = i + g;
    c = g - i;
    b = i + i;
    c = g + g;
    a = f - j;
    d = i + f;
    e = i + i;
    a = f - j;
    c = i + f;
    a = f + i;
    d = f - j;
    c = g - g;
    b = f - j;
    b = g + i;
    a = f + h;
    c = j + f;
    c = g - h;
    d = j - i;
    a = i - i;
    d = h + i;
    c = j + g;
    a = h + g;
    c = f - j;
    b = i + i;
    b = i - h;
    a = f + j;
    e = j - h;
    c = f - e;
    c = j + f;
    d = i - j;
    a = g - f;
    e = f + f;
    e = g - j;
    d = h - j;
    b = h - g;
    c = i + g;
    d = h + h;
    b = i - i;
    a = h + h;
    a = f - i;
    e = g + i;
    a = f + i;
    b = f + h;
    d = h - h;
    a = i + g;
    b = i + g;
    b = f - g;
    d = h + i;
    d = g + g;
    b = f + g;
    e = j + i;
    b = f - f;
    e = g + f;
    a = g - f;
    c = h + j;
    b = g + f;
    e = g - i;
    b = i - i;
    a = g + i;
    b = f + i;
    d = i + i;
    b = h + i;
    a = i + i;
    d = g - h;
    c = g + j;
    d = f - j;
    a = j - h;
    d = f + j;
    e = j - f;
    b = f - i;
    b = i + h;
    a = g - h;
    c = j - h;
    d = h - h;
    a = f + f;
    e = i + j;
    a = f + f;
    b = j - i;
    a = j + g;
    d = i - g;
    c = h + i;
    e = h - h;
    a = f - j;
    d = h + g;
    a = j + f;
    d = j - h;
    e = h - j;
    c = i + h;
    d = f + i;
    a = j + h;
    b = j - j;
    c = j - h;
    b = h + f;
    e = h - j;
    d = j - g;
    d = h - j;
    b = g + f;
    b = h + j;
    b = i - f;
    b = i + i;
    c = g + g;
    b = h - j;
    a = h - h;
    a = f + h;
    c = i + f;
    a = f + d;
    d = g - j;
    e = i + g;
    d = g + g;
    b = j + f;
    d = f + i;
    b = g + j;
    b = i - j;
    a = f + h;
    b = g - j;
    b = f + f;
    c = g + g;
    c = h + h;
    b = j - h;
    c = j - h;
    c = f - i;
    e = j - i;
    c = j - h;
    d = g + j;
    b = i + j;
    e = h + h;
    b = i - j;
    d = j + g;
    a = g + j;
    e = g - j;
    e = i - h;
    e = f - g;
    c = g + j;
    a = f - j;
    c = g - h;
    b = g - h;
    e = f + j;
    b = g + i;
    c = i + i;
    b = h + j;
    b = i - f;
    a = i + j;
    a = g + h;
    e = j + h;
    c = j + h;
    c = i - h;
    a = g + j;
    c = h + j;
    a = j - j;
    d = h + f;
    e = g - e;
    e = h + i;
    d = g - g;
    b = i + g;
    d = g + g;
    e = h - i;
    b = i - f;
    e = f - g;
    d = f - f;
    a = i - h;
    e = i - i;
    d = h - f;
    c = i + i;
    d = i + i;
    c = g - h;
    b = g + f;
    d = h - h;
    b = h + i;
    a = f - g;
    d = j - h;
    c = f - h;
    d = f + g;
    c = f - j;
    a = i + h;
    a = f - j;
    d = i - h;
    c = j + h;
    a = g - h;
    e = i + j;
    e = g - g;
    e = j - g;
    d = h + i;
    e = j - g;
    d = i - f;
    e = f + i;
    b = g + f;
    d = f - h;
    c = j - f;
    e = h + j;
    d = f - h;
    b = j + f;
    b = g - i;
    b = g - i;
    c = i - j;
    e = h - f;
    c = j + i;
    e = j - g;
    d = f - j;
    c = a - f;
    c = j - h;
    c = g - g;
    b = g - i;
    d = i + i;
    b = f + j;
    c = i + i;
    e = f + j;
    c = f - j;
    c = j - h;
    a = h - h;
    d = g - j;
    a = g + i;
    c = i + h;
    a = f + i;
    c = g - f;
    a = h - f;
    c = j + g;
    c = e + h;
    e = g - h;
    c = i + i;
    e = i + f;
    e = j + h;
    b = g + g;
    e = h + j;
    c = h - f;
    e = h - h;
    c = j + a;
    e = i + g;
    c = j + i;
    c = h - i;
    b = f - j;
    d = h + h;
    b = i + j;
    d = h + j;
    b = h + h;
    c = j - f;
    a = i + h;
    c = f + h;
    d = h - f;
    d = i + i;
    b = f + i;
    b = j + j;
    c = i - j;
    a = g - j;
    c = j + h;
    c = g - j;
    b = i + g;
    c = i - g;
    b = i - g;
    a = f + g;
    c = i - f;
    d = h - i;
    e = j - i;
    c = j + i;
    a = h + f;
    c = h + g;
    d = g + f;
    e = h + j;
    e = g + i;
    a = h - i;
    e = j + i;
    b = i + j;
    c = g + g;
    c = j - h;
    b = j + h;
    b = j - i;
    b = i + h;
    a = h - h;
    d = i - h;
    c = g - i;
    b = j + j;
    c = j + h;
    d = h - f;
    b = j + i;
    d = j - i;
    e = j + h;
    a = h - h;
    e = g - j;
    a = i + f;
    c = g + j;
    e = h - g;
    c = g + j;
    a = g + i;
    c = j + j;
    c = g - f;
    b = i + g;
    a = i + j;
    d = i - f;
    b = g + i;
    c = g - j;
    b = g - i;
    a = i + g;
    a = j + g;
    d = g + h;
    d = j + j;
    d = h - j;
    d = h - f;
    c = h - g;
    d = j + g;
    a = i - f;
    d = f + i;
    e = i - i;
    d = j + f;
    b = i + f;
    d = g + h;
    c = i + i;
    d = j - h;
    d = i - g;
    d = j - i;
    d = j - h;
    d = i - f;
    c = g + g;
    b = h + j;
    e = j + h;
    c = h + h;
    a = h + j;
    e = f + h;
    c = g - i;
    a = i + f;
    d = j - i;
    c = j - j;
    b = g + g;
    b = g - g;
    d = g - g;
    a = f - h;
    e = g - h;
    e = j - f;
    e = g - g;
    b = f - j;
    c = h - j;
    e = h - j;
    b = g + j;
    a = i - h;
    c = f - g;
    c = f - i;
    d = g + i;
    d = h + j;
    a = i - g;
    b = i + g;
    b = f - j;
    e = g - g;
    b = h + f;
    b = j - g;
    e = h - g;
    e = i - f;
    d = g - j;
    c = g - h;
    a = g - h;
    c = g + j;
    e = i + j;
    c = i - f;
    d = f + g;
    e = i + f;
    e = f - h;
    b = f - i;
    d = g - h;
    a = h - i;
    e = h + h;
    a = h - g;
    c = g + f;
    d = h - g;
    e = i - g;
    d = f + j;
    c = j - i;
    d = g + f;
    c = j + i;
    d = i - f;
    e = g - f;
    b = g + f;
    b = i - f;
    e = f + i;
    d = f + f;
    b = g + j;
    e = g + f;
    e = i + g;
    b = f + g;
    c = f - j;
    d = h - j;
    a = i + i;
    d = i + g;
    c = h - h;
    e = f - j;
    c = h + h;
    d = g + i;
    d = j - i;
    e = f - i;
    c = h + h;
    a = g + f;
    d = j + h;
    d = j + j;
    a = j + g;
    e = i + f;
    c = f - h;
    e = g + g;
    a = g - g;
    d = h - j;
    e = f + i;
    e = f + g;
    a = i - f;
    b = j + j;
    b = i - h;
    d = d - h;
    d = i + f;
    b = j + g;
    a = f - h;
    d = i - j;
    a = a + f;
    e = f - i;
    b = h + j;
    e = c + g;
    c = f + f;
    e = j + g;
    a = j + h;
    b = g - i;
    d = j - g;
    c = h + f;
    a = g + i;
    c = f + f;
    a = i - f;
    d = i + i;
    e = g + j;
    a = j + g;
    e = j + i;
    a = f + i;
    b = i + g;
    b = f - h;
    c = j + f;
    a = j + j;
    e = j - f;
    d = h - f;
    e = f - h;
    e = i + f;
    a = j - g;
    b = g - f;
    c = i + h;
    i = h - j;
    e = j + j;
    a = g + j;
    b = h + h;
    a = j - g;
    e = j - h;
    a = j - j;
    e = h - j;
    e = j - h;
    a = g + j;
    a = g - i;
    d = h + j;
    d = j + j;
    e = h - i;
    e = g - g;
    d = h + j;
    a = j - j;
    b = f + f;
    e = g + j;
    e = i + f;
    b = h + g;
    b = h + g;
    d = g + g;
    e = g + j;
    d = h + h;
    d = j + i;
    c = j - h;
    e = h + i;
    d = i + i;
    d = h - j;
    b = h + h;
    a = f + j;
    a = g - g;
    c = f - f;
    e = h + j;
    c = g + g;
    c = g + f;
    c = f + j;
    b = j + j;
    e = g + f;
    a = g + j;
    b = f - i;
    b = f + f;
    b = g - f;
    d = h - j;
    c = g - j;
    c = g + g;
    b = i - h;
    e = g - f;
    d = e + f;
    e = g + g;
    e = j + g;
    a = g - h;
    c = i - g;
    c = i + h;
    c = f - j;
    d = j - h;
    b = f - f;
    a = i + g;
    a = i - h;
    e = j + f;
    c = h - f;
    a = f + g;
    d = i + g;
    e = h - f;
    d = h + f;
    a = j - h;
    d = i + f;
    d = j - j;
    e = g + h;
    c = f - g;
    e = f - i;
    b = f + g;
    a = i + h;
    a = g - i;
    d = i - f;
    a = h + i;
    c = i + j;
    d = i + j;
    c = i - i;
    e = f - j;
    a = h + h;
    c = g + h;
    e = f - h;
    d = i + i;
    e = f - j;
    e = h - g;
    a = j - f;
    c = g - i;
    c = g - h;
    d = h + f;
    a = i + h;
    d = i + j;
    a = h + f;
    e = i - f;
    a = f - i;
    a = j + g;
    d = j + h;
    b = g - j;
    d = f - j;
    b = i + j;
    e = f - f;
    e = f - f;
    d = g + h;
    e = f + j;
    d = f + j;
    e = h + j;
    d = j - g;
    a = g + h;
    d = h - j;
    g = j + j;
    c = i - f;
    c = f - j;
    e = f + d;
    e = f + j;
    a = g - j;
    c = h + f;
    d = j - h;
    b = h + g;
    c = g + i;
    b = i - h;
    e = g + j;
    e = i - j;
    a = j + i;
    b = h - h;
    e = f + f;
    c = j + f;
    e = j - j;
    d = h + e;
    a = j + h;
    b = h + g;
    c = g + j;
    a = f + f;
    c = h + f;
    a = g + f;
    d = g + h;
    e = h + h;
    c = g - f;
    b = f - f;
    b = g + i;
    c = j + j;
    c = i + i;
    a = f + f;
    b = f + f;
    c = g + j;
    a = j + g;
    g = g + i;
    a = i + j;
    c = f - f;
    c = g + g;
    c = f + j;
    d = j + f;
    b = h - i;
    b = g - h;
    a = h - h;
    a = f - h;
    c = g + h;
    b = h + h;
    c = i - h;
    a = i + h;
    a = f - i;
    d = i - f;
    b = f - b;
    d = f - f;
    a = f + h;
    e = i + g;
    a = g - f;
    c = i - g;
    e = f + j;
    d = f - h;
    d = i + j;
    c = j + j;
    // End optimization range
    return a+b+c+d+e+f+g+h+i+j;
}

int main() {
    srand (0);
    double a,b,c,d,e,f,g,h,i,j;  
    a= randfrom(-100.0, 100.0);
    b= randfrom(-100.0, 100.0);
    c= randfrom(-100.0, 100.0);
    d= randfrom(-100.0, 100.0);
    e= randfrom(-100.0, 100.0);
    f= randfrom(-100.0, 100.0);
    g= randfrom(-100.0, 100.0);
    h= randfrom(-100.0, 100.0);
    i= randfrom(-100.0, 100.0);
    j= randfrom(-100.0, 100.0);
    // Timer code from https://www.techiedelight.com/measure-elapsed-time-program-chrono-library/
    double res;
    for (int i = 0; i < 2000000; i++) {
        res += op_function(a,b,c,d,e,f,g,h,i,j);
    }
    return 0;
}

