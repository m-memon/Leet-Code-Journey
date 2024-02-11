class Solution {
  int missingNumber(List<int> nums) {
    nums.sort();
    int index = 0;
    searchLoop:
    while (index < nums.length) {
      if (nums[index] != index) {
        break searchLoop;
      }
      index++;
    }
    return index;
  }
}