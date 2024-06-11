class Solution {
  List<int> relativeSortArray(List<int> arr1, List<int> arr2) {
    List<int> ans = [];
    List<int> count = List<int>.filled(1001, 0);

    for (int a in arr1) {
      count[a]++;
    }

    for (int a in arr2) {
      while (count[a] > 0) {
        ans.add(a);
        count[a]--;
      }
    }

    for (int num = 0; num < 1001; num++) {
      while (count[num] > 0) {
        ans.add(num);
        count[num]--;
      }
    }

    return ans;
  }
}