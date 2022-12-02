
#include <iostream>
using namespace std;

void reference_loop(float *b, int size) {
  for (int i = 0; i < size; i++) {
    float tmp = b[i];
    tmp += 1.0f;
    tmp += 2.0f;
    tmp += 3.0f;
    tmp += 4.0f;
    tmp += 5.0f;
    tmp += 6.0f;
    tmp += 7.0f;
    tmp += 8.0f;
    tmp += 9.0f;
    tmp += 10.0f;
    tmp += 11.0f;
    tmp += 12.0f;
    tmp += 13.0f;
    tmp += 14.0f;
    tmp += 15.0f;
    tmp += 16.0f;
    tmp += 17.0f;
    tmp += 18.0f;
    tmp += 19.0f;
    tmp += 20.0f;
    tmp += 21.0f;
    tmp += 22.0f;
    tmp += 23.0f;
    tmp += 24.0f;
    tmp += 25.0f;
    tmp += 26.0f;
    tmp += 27.0f;
    tmp += 28.0f;
    tmp += 29.0f;
    tmp += 30.0f;
    tmp += 31.0f;
    tmp += 32.0f;
    tmp += 33.0f;
    tmp += 34.0f;
    tmp += 35.0f;
    tmp += 36.0f;
    tmp += 37.0f;
    tmp += 38.0f;
    tmp += 39.0f;
    tmp += 40.0f;
    tmp += 41.0f;
    tmp += 42.0f;
    tmp += 43.0f;
    tmp += 44.0f;
    tmp += 45.0f;
    tmp += 46.0f;
    tmp += 47.0f;
    tmp += 48.0f;
    tmp += 49.0f;
    tmp += 50.0f;
    tmp += 51.0f;
    tmp += 52.0f;
    tmp += 53.0f;
    tmp += 54.0f;
    tmp += 55.0f;
    tmp += 56.0f;
    tmp += 57.0f;
    tmp += 58.0f;
    tmp += 59.0f;
    tmp += 60.0f;
    tmp += 61.0f;
    tmp += 62.0f;
    tmp += 63.0f;
    tmp += 64.0f;
    b[i] = tmp;
  }
}

#define CHAIN_LENGTH 64
#define UNROLL_FACTOR 32

#define SIZE 1024 * 1024 * 8

int main() {

  float *b;
  b = (float *) malloc(SIZE * sizeof(float));


  for (int i = 0; i < SIZE; i++) {
    b[i] = i;
  }


  reference_loop(b,SIZE);

  return 0;
}
