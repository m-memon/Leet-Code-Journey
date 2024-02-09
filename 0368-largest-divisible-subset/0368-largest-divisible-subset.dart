class Solution {
  List<int> largestDivisibleSubset(List<int> nums) {
    if (nums.isEmpty) return [];

    // Sort the array in ascending order
    nums.sort();

    // dp[i] stores the size of the largest divisible subset ending at nums[i]
    List<int> dp = List.filled(nums.length, 1);

    // prevIndex[i] stores the index of the previous element in the largest divisible subset
    List<int> prevIndex = List.filled(nums.length, -1);

    // Initialize the max length and its corresponding index
    int maxLength = 1;
    int maxIndex = 0;

    // Dynamic programming to find the largest divisible subset
    for (int i = 1; i < nums.length; i++) {
      for (int j = 0; j < i; j++) {
        if (nums[i] % nums[j] == 0 && dp[j] + 1 > dp[i]) {
          dp[i] = dp[j] + 1;
          prevIndex[i] = j;
        }
      }
      if (dp[i] > maxLength) {
        maxLength = dp[i];
        maxIndex = i;
      }
    }

    // Reconstruct the largest divisible subset
    List<int> result = [];
    while (maxIndex != -1) {
      result.add(nums[maxIndex]);
      maxIndex = prevIndex[maxIndex];
    }

    return result;
  }
}