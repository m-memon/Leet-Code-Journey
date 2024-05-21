class Solution {
  bool isPalindrome(String s) {
    final String originalString = removeUnwanted(s.toLowerCase());
    final String reverseString = originalString.split("").reversed.join("");
    return originalString == reverseString ? true : false;
  }
  String removeUnwanted(String string){
      final String wanted = "abcdefghijklmnopqrstuvwxyz0123456789";
      String result = "";
      for (String s in string.split("")) {
          if (wanted.contains(s)) {result = "$result$s";}
      }
      return result;
  }
}