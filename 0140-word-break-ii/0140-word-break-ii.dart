class Solution {
  List<String> wordBreak(String s, List<String> wordDict) {
    final wordSet = Set<String>.from(wordDict);
    final mem = <String, List<String>>{};
    return _wordBreak(s, wordSet, mem);
  }

  List<String> _wordBreak(String s, Set<String> wordSet, Map<String, List<String>> mem) {
    if (mem.containsKey(s)) return mem[s]!;

    List<String> ans = [];

    // 1 <= prefix.length() < s.length
    for (int i = 1; i < s.length; ++i) {
      final prefix = s.substring(0, i);
      final suffix = s.substring(i);
      if (wordSet.contains(prefix)) {
        for (final word in _wordBreak(suffix, wordSet, mem)) {
          ans.add('$prefix $word');
        }
      }
    }

    // `wordSet` contains the whole string s, so don't add any space.
    if (wordSet.contains(s)) {
      ans.add(s);
    }

    mem[s] = ans;
    return ans;
  }
}