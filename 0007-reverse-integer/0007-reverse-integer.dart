class Solution {
  int reverse(int x) {
    int reverseInteger = 0;
    String reverseString = "";
    for (int i = "$x".length - 1;i >= 0;i = i - 1) {
        if ("$x"[i] != "-") {
            reverseString = reverseString + "$x"[i];
        } else {
            reverseString = "$x"[i] + reverseString;
        }
    }
    reverseInteger = int.parse(reverseString);
    if (reverseInteger > 2147483647 || reverseInteger < -2147483648) {
        return 0;
    } else {
        return reverseInteger;
    }
  }
}