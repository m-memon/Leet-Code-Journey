import 'dart:math';

class Solution {
  bool judgeSquareSum(int c) {
    int l = 0;
    int r = sqrt(c).toInt();

    while (l <= r) {
      int sum = l * l + r * r;
      if (sum == c) {
        return true;
      }
      if (sum < c) {
        l++;
      } else {
        r--;
      }
    }

    return false;
  }
}