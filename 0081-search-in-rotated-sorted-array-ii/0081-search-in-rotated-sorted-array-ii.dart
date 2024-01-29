class Solution {
  bool search(List<int> nums, int target) {
    bool result = false;
    int i = 0;
    searchLoop:
    while (i < nums.length) {
      if (nums[i] == target) {
        result = true;
        break searchLoop;
      }
      i++;
    }
    return result;
  }
}