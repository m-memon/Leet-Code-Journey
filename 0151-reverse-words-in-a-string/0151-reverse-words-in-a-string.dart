class Solution {
  String reverseWords(String s) {
    return s.trim().split(" ").reversed.toList().join(" ").replaceAll(RegExp(r'\s+'), " ");
  }
}