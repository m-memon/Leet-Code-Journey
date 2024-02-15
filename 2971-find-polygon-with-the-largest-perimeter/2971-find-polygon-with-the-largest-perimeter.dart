class Solution {
  int largestPerimeter(List<int> nums) {
    int prefix = nums.reduce((value, element) => value + element);

    nums.sort();

    for (int i = nums.length - 1; i >= 2; i--) {
      prefix -= nums[i];
      // Let nums[i] be the longest side. Check if the sum of all the edges with
      // length no longer than nums[i] > nums[i].
      if (prefix > nums[i]) {
        return prefix + nums[i];
      }
    }

    return -1;
  }
}