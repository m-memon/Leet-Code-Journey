class Solution {
  List<int> singleNumber(List<int> nums) {
    List<int> result = [];
    for (int index = 0; index < nums.length; index++) {
      if (!result.contains(nums[index])) {
        if(!nums.sublist(0,index).contains(nums[index])){
          result.add(nums[index]);
        }
      } else {
        result.remove(nums[index]);
      }
    }
    return result;
  }
}