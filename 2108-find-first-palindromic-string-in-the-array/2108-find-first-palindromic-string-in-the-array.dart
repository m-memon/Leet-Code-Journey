class Solution {
  String firstPalindrome(List<String> words) {
    String result = "";
    for (String word in words) {
      String reverseWord = word.split("").reversed.join();
      if (word == reverseWord) {
        result = word;
        break;
      }
    }
    return result;
  }
}