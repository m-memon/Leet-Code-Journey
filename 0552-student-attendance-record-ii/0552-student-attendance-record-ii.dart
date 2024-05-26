class Solution {
  int checkRecord(int n) {
    const int kMod = 1000000007;
    // dp[i][j] := the length so far with i A's and the last letters are j L's
    List<List<int>> dp = List.generate(2, (_) => List.filled(3, 0));
    dp[0][0] = 1;

    while (n-- > 0) {
      List<List<int>> prev = List.generate(2, (i) => List.from(dp[i]));

      // Append a P.
      dp[0][0] = (prev[0][0] + prev[0][1] + prev[0][2]) % kMod;

      // Append an L.
      dp[0][1] = prev[0][0];

      // Append an L.
      dp[0][2] = prev[0][1];

      // Append an A or append a P.
      dp[1][0] = (prev[0][0] + prev[0][1] + prev[0][2] +  
                  prev[1][0] + prev[1][1] + prev[1][2]) % kMod;

      // Append an L.
      dp[1][1] = prev[1][0];

      // Append an L.
      dp[1][2] = prev[1][1];
    }

    int result = 0;
    for (var row in dp) {
      for (var val in row) {
        result = (result + val) % kMod;
      }
    }

    return result;
  }
}
