class Solution {
  int romanToInt(String s) {
    Map<String, int> myMap = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
    };

    int result = myMap[s[s.length - 1]]!;
    for (int i = s.length - 2; i >= 0; --i) {
      if (myMap[s[i]]! < myMap[s[i + 1]]!) {
        result -= myMap[s[i]]!;
      } else {
        result += myMap[s[i]]!;
      }
    }
    return result;
  }
}
