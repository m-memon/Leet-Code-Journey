class Solution {
  void reverseString(List<String> s) {
    int l = 0;
    int r = s.length - 1;

    while (l < r) {
      String temp = s[l];
      s[l] = s[r];
      s[r] = temp;
      l++;
      r--;
    }
  }
}