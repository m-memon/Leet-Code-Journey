class Solution {
  int numSquares(int n) {
    List<int> step = List.filled(n + 1, n); // Filling the list with n+1 elements initialized to n
    step[0] = 0; // Base case: Zero is represented by 0 perfect squares
    for (int i = 1; i <= n; i++) {
      for (int j = 1; j * j <= i; j++) {
        step[i] = min(step[i], step[i - j * j] + 1);
      }
    }
    return step[n];
  }
}