class Solution {
  List<int> sortedSquares(List<int> nums) {
    List<int> result = [];
    for (int index = 0; index < nums.length; index++) {
      if (nums[index] < 0) {
        String tempString = "${nums[index]}".substring(0, 0) +
          "${nums[index]}".substring(1);
        result.add(int.parse(tempString) * int.parse(tempString));
      } else if (nums[index] >= 0) {
        result.add(nums[index] * nums[index]);
      }
    }
    result.sort();
    return result;
  }
}