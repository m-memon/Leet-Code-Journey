class Solution {
  int subarraysDivByK(List<int> nums, int k) {
    int ans = 0;
    int prefix = 0;
    List<int> count = List.filled(k, 0);
    count[0] = 1;

    for (int num in nums) {
      prefix = (prefix + num % k + k) % k;
      ans += count[prefix];
      count[prefix]++;
    }

    return ans;
  }
}