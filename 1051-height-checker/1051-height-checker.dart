class Solution {
  int heightChecker(List<int> heights) {
    int ans = 0;
    int currentHeight = 1;
    List<int> count = List.filled(101, 0);

    for (int height in heights) {
      count[height]++;
    }

    for (int height in heights) {
      while (count[currentHeight] == 0) {
        currentHeight++;
      }
      if (height != currentHeight) {
        ans++;
      }
      count[currentHeight]--;
    }

    return ans;
  }
}
