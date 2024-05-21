class Solution {
  int findPeakElement(List<int> nums) {
    return nums.indexOf(nums.reduce((curr, next) => curr > next ? curr : next));
  }
}