class Solution {
  bool checkSubarraySum(List<int> nums, int k) {
    int prefix = 0;
    Map<int, int> prefixToIndex = {0: -1};

    for (int i = 0; i < nums.length; ++i) {
      prefix += nums[i];
      if (k != 0) {
        prefix %= k;
      }
      if (prefixToIndex.containsKey(prefix)) {
        if (i - prefixToIndex[prefix]! > 1) {
          return true;
        }
      } else {
        // Set a new key if it's absent because the previous index is better.
        prefixToIndex[prefix] = i;
      }
    }

    return false;
  }
}