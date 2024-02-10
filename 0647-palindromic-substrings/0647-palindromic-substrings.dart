class Solution {
  int countSubstrings(String s) {
    int count = 0;
    int n = s.length;
    List<List<bool>> dp = List.generate(n, (_) => List.filled(n, false));

    // Single characters are palindromes
    for (int i = 0; i < n; i++) {
      dp[i][i] = true;
      count++;
    }

    // Check for palindromes of length 2
    for (int i = 0; i < n - 1; i++) {
      if (s[i] == s[i + 1]) {
        dp[i][i + 1] = true;
        count++;
      }
    }

    // Check for palindromes of length greater than 2
    for (int len = 3; len <= n; len++) {
      for (int i = 0; i <= n - len; i++) {
        int j = i + len - 1;
        if (s[i] == s[j] && dp[i + 1][j - 1]) {
          dp[i][j] = true;
          count++;
        }
      }
    }

    return count;
  }
}