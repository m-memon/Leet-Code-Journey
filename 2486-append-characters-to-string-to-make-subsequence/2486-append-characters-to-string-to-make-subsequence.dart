class Solution {
  int appendCharacters(String s, String t) {
    int i = 0;  // t's index

    for (final char in s.split('')) {
      if (char == t[i]) {
        if (++i == t.length) {
          return 0;
        }
      }
    }

    return t.length - i;
  }
}