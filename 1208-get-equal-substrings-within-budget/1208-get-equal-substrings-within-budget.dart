import 'dart:math';

class Solution {
  int equalSubstring(String s, String t, int maxCost) {
    int length = s.length;
    int maxLength = 0;
    int currentCost = 0;

    int start = 0;

    for (int end = 0; end < length; ++end) {

      currentCost += (s.codeUnitAt(end) - t.codeUnitAt(end)).abs();

      while (currentCost > maxCost) {
        currentCost -= (s.codeUnitAt(start) - t.codeUnitAt(start)).abs();

        ++start;
      }
      

      maxLength = max(maxLength, end - start + 1);
    }

    return maxLength;
  }

  int max(int a, int b) {
    return (a > b) ? a : b;
  }
}