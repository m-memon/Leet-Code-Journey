class Solution {
  int search(List<int> nums, int target) {
    int result = -1;
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] == target) {
        result = i;
      }
    }
    return result;
  }
}