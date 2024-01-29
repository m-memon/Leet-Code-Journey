class Solution {
  int removeDuplicates(List<int> nums) {
    List <int> uniqueNums = [];
    int result = 0;
    for (int i = 0; i < nums.length; i++) {
      if (!uniqueNums.contains(nums[i])) {
        uniqueNums.add(nums[i]);
        result++;
      }
    }
    nums.clear();
    nums.addAll(uniqueNums);
    return result;
  }
}