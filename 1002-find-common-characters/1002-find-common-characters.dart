class Solution {
  List<String> commonChars(List<String> words) {
    List<String> ans = [];
    List<int> commonCount = List.filled(26, 1 << 31 - 1);

    for (String word in words) {
      List<int> count = List.filled(26, 0);
      for (int i = 0; i < word.length; ++i) {
        count[word.codeUnitAt(i) - 'a'.codeUnitAt(0)]++;
      }
      for (int i = 0; i < 26; ++i) {
        commonCount[i] = commonCount[i].clamp(0, count[i]);
      }
    }

    for (int i = 0; i < 26; ++i) {
      for (int j = 0; j < commonCount[i]; ++j) {
        ans.add(String.fromCharCode('a'.codeUnitAt(0) + i));
      }
    }

    return ans;
  }
}