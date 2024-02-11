class Solution {
  int cherryPickup(List<List<int>> grid) {
    int n = grid.length;
    int m = grid[0].length;
    
    // Create a 3D DP array to store the maximum cherries collected
    // dp[i][j][k] represents the maximum cherries collected when both robots start at (i, j) and (k, i+j-k)
    List<List<List<int>>> dp = List.generate(n, (_) => List.generate(m, (_) => List.filled(m, 0)));
    
    // Fill the DP array for the last row
    for (int j = 0; j < m; j++) {
      for (int k = 0; k < m; k++) {
        dp[n - 1][j][k] = grid[n - 1][j] + (j != k ? grid[n - 1][k] : 0);
      }
    }
    
    // Iterate through the remaining rows from bottom to top
    for (int i = n - 2; i >= 0; i--) {
      // Iterate through all possible positions for the first robot
      for (int j = 0; j < m; j++) {
        for (int k = 0; k < m; k++) {
          // Initialize the maximum cherries collected for the current position of the first robot
          int maxCherries = 0;
          // Iterate through all possible positions for the second robot
          for (int dj = -1; dj <= 1; dj++) {
            for (int dk = -1; dk <= 1; dk++) {
              // Calculate the new positions for the second robot
              int nj = j + dj;
              int nk = k + dk;
              // Check if the new positions are valid
              if (nj >= 0 && nj < m && nk >= 0 && nk < m) {
                // Update the maximum cherries collected for the current position of the first robot
                maxCherries = max(maxCherries, dp[i + 1][nj][nk]);
              }
            }
          }
          // Update the maximum cherries collected for the current position of the first robot
          dp[i][j][k] = grid[i][j] + (j != k ? grid[i][k] : 0) + maxCherries;
        }
      }
    }
    
    // Return the maximum cherries collected when both robots start at (0, 0) and (0, m-1)
    return dp[0][0][m - 1];
  }
}