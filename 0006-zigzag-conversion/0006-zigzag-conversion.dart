class Solution {
  String convert(String s, int numRows) {
    if (numRows == 1) {
      return s;
    } else {
      List<String> finalString = List.filled(numRows, "");
      int lastRowIndex = numRows - 1;
      int currentRow = 0;
      bool goingDown = true;
      for (int currentCharIndex = 0; currentCharIndex < s.length; currentCharIndex++) {
        finalString[currentRow] += s[currentCharIndex];
        if (currentRow == 0) {
          goingDown = true;
        } else if (currentRow == lastRowIndex) {
          goingDown = false;
        }
        currentRow += goingDown ? 1 : -1;
      }
      return finalString.join();
    }
  }
}