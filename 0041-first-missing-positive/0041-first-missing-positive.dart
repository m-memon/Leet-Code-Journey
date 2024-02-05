class Solution {
  int firstMissingPositive(List<int> nums) {
    List <int> temp = nums.toSet().toList()..sort();
    temp.removeWhere((element) => element <= 0);
    int result = 1;
    int index = 0;
    searchLoop:
    while (index < temp.length) {
      if (temp[index] != result) {
        break searchLoop;
      }
      index++;
      result++;
    }
    return result;
  }
}