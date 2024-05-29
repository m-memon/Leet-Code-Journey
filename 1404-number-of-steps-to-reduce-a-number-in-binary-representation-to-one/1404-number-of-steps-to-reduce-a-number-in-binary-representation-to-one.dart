class Solution {
  int numSteps(String s) {
    int ans = 0;

    List<String> chars = s.split('');

    while (chars.isNotEmpty && chars.last == '0') {
      chars.removeLast();
      ++ans;
    }

    if (chars.join('') == "1") {
      return ans;
    }

    ++ans;

    for (String c in chars) {
      ans += c == '1' ? 1 : 2;
    }

    return ans;
  }
}