class Solution {
  int maxIntFromList (List <int> intList) {
    int maxInt = 0;
    for (int i = 0; i < intList.length; i++) {
      if (intList[i] > maxInt) {
        maxInt = intList[i];
      }
    }
    return maxInt;
  }
  int lengthOfLongestSubstring(String s) {
    String finalString = "";
    List<int> listLength = [];
    for (int i = 0; i < s.length; i++) {
      int index = finalString.indexOf(s[i]);
      if (index != -1) {
        finalString = finalString.substring(index + 1);
      }
      finalString = finalString + s[i];
      listLength.add(finalString.length);
    }
    return maxIntFromList(listLength);
  }
}