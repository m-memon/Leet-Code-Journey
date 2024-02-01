class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    List <int> mergedNums = [];
    double result = 0;
    mergedNums.addAll(nums1);
    mergedNums.addAll(nums2);
    mergedNums.sort();
    if (mergedNums.length % 2 == 0) {
      result = mergedNums[(mergedNums.length ~/ 2)-1].toDouble() + mergedNums[(mergedNums.length ~/ 2)].toDouble();
      print("Inside if: $result");
      result = result / 2;
    } else {
      result = mergedNums[(mergedNums.length ~/ 2)].toDouble();
      print("Inside else: $result");
    }
    return result;
  }
}