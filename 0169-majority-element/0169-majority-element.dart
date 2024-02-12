class Solution {
  int majorityElement(List <int> nums) {
    Map <int, int> temp = {};
    for (int index = 0; index < nums.length; index++) {
      temp[nums[index]] = (temp[nums[index]] ?? 0) + 1;
      if (temp[nums[index]]! > nums.length / 2) {
        return nums[index];
      }
    }
    return -1;
  }
}