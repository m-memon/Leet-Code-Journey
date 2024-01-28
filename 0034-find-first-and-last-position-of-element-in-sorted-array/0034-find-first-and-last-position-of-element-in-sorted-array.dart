class Solution {
  List<int> searchRange(List<int> nums, int target) {
    if (nums.contains(target)) {
      List <int> result = [];
      for (int i = 0; i < nums.length; i++) {
        if (nums[i] == target) {
          if (result.length == 2) {
            result[1] = i;
          } else {
            result.add(i);
          }
        }
      }
      if (result.length == 1) {
        result.add(result[0]);
      }
      return result;
    } else {
      return [-1, -1];
    }
  }
}