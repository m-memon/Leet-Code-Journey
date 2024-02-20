class Solution {
  int titleToNumber(String columnTitle) {
    String aToz = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    int result = 0;
    for (int index = 0; index < columnTitle.length; index++) {
      int index0 = aToz.indexOf(columnTitle[index]);
      result = result * 26 + index0 + 1;
    }
    return result;
  }
}