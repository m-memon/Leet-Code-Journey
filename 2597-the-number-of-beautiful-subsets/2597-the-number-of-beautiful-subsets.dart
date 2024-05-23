class Solution {
  int beautifulSubsets(List<int> nums, int k) {
    int count = 0;
    int n = nums.length;

    // Function to check if a subset is beautiful
    bool isBeautiful(List<int> subset) {
      for (int i = 0; i < subset.length; i++) {
        for (int j = i + 1; j < subset.length; j++) {
          if ((subset[i] - subset[j]).abs() == k) {
            return false;
          }
        }
      }
      return true;
    }

    // Generate all subsets using bitwise representation
    for (int i = 1; i < (1 << n); i++) {
      List<int> subset = [];
      for (int j = 0; j < n; j++) {
        if ((i & (1 << j)) != 0) {
          subset.add(nums[j]);
        }
      }
      if (isBeautiful(subset)) {
        count++;
      }
    }

    return count;
  }
}