class Solution {
  int searchInsert(List<int> nums, int target) {
    int i = 0;
    int futureIndex = 1;
    searchLoop:
    while (i < nums.length) {
      if (nums[i] == target || target < nums[0]) {
        break searchLoop;
      } else if (i == nums.length - 1 || nums[i] > target) {
        i = futureIndex;
        break searchLoop;
      } else if (nums[i] < target && nums[futureIndex] >= target) {
        i = futureIndex;
        break searchLoop;
      } else {
        i++;
        futureIndex++;
      }
    }
    return i;
  }
}