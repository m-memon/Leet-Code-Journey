class Solution {
  int removeDuplicates(List<int> nums) {
    List <int> uniqueNums = [];
    int result = 0;
    for (int i = 0; i < nums.length; i++) {
      if (!uniqueNums.contains(nums[i]) || uniqueNums.length == 1) {
        uniqueNums.add(nums[i]);
        result++;
      } else if (uniqueNums.length > 1) {
        if (uniqueNums[uniqueNums.length - 1] == nums[i] && uniqueNums[uniqueNums.length - 2] != nums[i]) {
          uniqueNums.add(nums[i]);
          result++;
        }
      }
    }
    nums.clear();
    nums.addAll(uniqueNums);
    return result;
  }
}