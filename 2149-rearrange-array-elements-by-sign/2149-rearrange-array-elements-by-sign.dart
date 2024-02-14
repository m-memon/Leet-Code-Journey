class Solution {
  List<int> rearrangeArray(List<int> nums) {
    List<int> ans = [];
    List<int> pos = [];
    List<int> neg = [];
    for (int num in nums) {
      (num > 0 ? pos : neg).add(num);
    }
    for (int i = 0; i < pos.length; ++i) {
      ans.add(pos[i]);
      ans.add(neg[i]);
    }
    return ans;
  }
}