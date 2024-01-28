class Solution {
  int divide(int dividend, int divisor) {
    int answer = 0;
    if (dividend ~/ divisor > 2147483647) {
        answer = 2147483647;
    } else if (dividend ~/ divisor < -2147483648) {
        answer = -2147483648;
    } else {
        answer = dividend ~/ divisor;
    }
    return answer;
  }
}