class Solution {
  int strStr(String haystack, String needle) {
    if (haystack.contains(needle)) {
      int index = 0;
      haystackLoop:
      while (index < haystack.length) {
        if (haystack[index] == needle[0]) {
          int secondIndex = 0;
          needleLoop:
          while (secondIndex < needle.length) {
            if (haystack[index + secondIndex] != needle[secondIndex]) {
              break needleLoop;
            } else if (secondIndex == needle.length - 1) {
              break haystackLoop;
            }
            secondIndex++;
          }
        }
        index++;
      }
      return index;
    } else {
      return -1;
    }
  }
}