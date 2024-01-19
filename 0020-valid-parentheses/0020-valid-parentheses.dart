class Solution {
  bool isMatching (String a, String b) {
    return ((a == "(" && b == ")") || (a == "{" && b == "}") || (a == "[" && b == "]"));
  }
  bool isValid(String s) {
    List <String> stack = [];
    int i = 0;
    confirmationLoop:
    while (i < s.length) {
      if (s[i] == "(" || s[i] == "{" || s[i] == "[") {
        stack.add(s[i]);
      }else {
        if (stack.isEmpty) {
          return false;
          break confirmationLoop;
        }
        if (isMatching(stack.last, s[i])) {
          stack.removeLast();
        } else {
          return false;
          break confirmationLoop;
        }
      }
      i++;
    }
    return stack.isEmpty;
  }
}