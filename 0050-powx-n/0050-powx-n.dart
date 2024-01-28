class Solution {
  double myPow(double x, int n) {
    if (n == 0) {
      return 1;
    }
    double result = 1;
    double base = x;
    // If the exponent is negative, invert the base and negate the exponent.
    if (n < 0) {
      base = 1 / x;
      n = -n;
    }
    while (n > 0) {
      if (n % 2 == 1) {
        result *= base;
      }
      base *= base;
      n ~/= 2; // Integer division by 2
    }
    return result;
  }
}