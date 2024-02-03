class Solution {
  int lengthOfLastWord(String s) {
    int result = 0;
    for (int index = s.length - 1; index >= 0; index -= 1) {
      if (s[index] != " ") {
        result += 1;
      } else {
        if (result > 0) {
          return result;
        }
      }
    }
    return result;
  }
}