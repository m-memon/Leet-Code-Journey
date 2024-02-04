class Solution {
  int removeElement(List<int> nums, int val) {
    nums.removeWhere((element) => element == val);
    print("Returned List: $nums");
    return nums.length;
  }
}