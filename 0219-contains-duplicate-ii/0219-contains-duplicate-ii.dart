class Solution {
  bool containsNearbyDuplicate(List<int> nums, int k) {
    Map<int, int?> numIndices = {}; // Map to store element indices
    for (int i = 0; i < nums.length; i++) {
      int num = nums[i];
      if (numIndices.containsKey(num) && (i - (numIndices[num] ?? i)) <= k) {
        return true; // Found a duplicate within range k
      }
      numIndices[num] = i; // Update the index of the element
    }
    return false; // No duplicates found within range k
  }
}