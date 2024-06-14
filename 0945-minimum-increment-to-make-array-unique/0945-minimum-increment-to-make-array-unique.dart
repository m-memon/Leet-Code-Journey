class Solution {
  int minIncrementForUnique(List<int> nums) {
    int ans = 0;
    int minAvailable = 0;

    nums.sort();

    for (final num in nums) {
      ans += (minAvailable - num).clamp(0, double.infinity).toInt();
      minAvailable = (minAvailable > num ? minAvailable : num) + 1;
    }

    return ans;
  }
}