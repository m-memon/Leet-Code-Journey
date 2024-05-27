class Solution {
  int specialArray(List<int> nums) {
    nums.sort();

    if (nums[0] >= nums.length) {
      return nums.length;
    }

    for (int i = 1; i < nums.length; ++i) {
      final int count = nums.length - i;
      if (nums[i - 1] < count && nums[i] >= count) {
        return count;
      }
    }

    return -1;
  }
}