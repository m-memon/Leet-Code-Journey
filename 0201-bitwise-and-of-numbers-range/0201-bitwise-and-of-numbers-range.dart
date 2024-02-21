class Solution {
  int rangeBitwiseAnd(int left, int right) {
    int shift = 0;
    // Find the common prefix
    while (left != right) {
      left >>= 1;
      right >>= 1;
      shift += 1;
    }
    // Shift back to get the common bits in the original position
    return left << shift;
  }
}
