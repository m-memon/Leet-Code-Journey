class Solution {
  int addDigits(int num) {
    String tempS = "$num";
    int result = 0;
    for (int index = 0; index < tempS.length; index++) {
      result += int.parse(tempS[index]);
    }
    while (result > 9) {
      int tempI = result;
      result = 0;
      while (tempI > 0) {
        result += tempI % 10;
        tempI ~/= 10;
      }
    }
    return result;
  }
}