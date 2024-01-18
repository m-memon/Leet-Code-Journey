class Solution {
  bool isPalindrome(int x) {
    String originalString = "$x".split('').reversed.join();
    return originalString == "$x";
  }
}