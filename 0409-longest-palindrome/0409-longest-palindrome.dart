class Solution {
  int longestPalindrome(String s) {
    int ans = 0;
    List<int> count = List.filled(128, 0);

    for (var c in s.codeUnits) {
      count[c]++;
    }

    for (var freq in count) {
      ans += (freq % 2 == 0) ? freq : freq - 1;
    }

    bool hasOddCount = count.any((c) => c.isOdd);
    return ans + (hasOddCount ? 1 : 0);
  }
}
