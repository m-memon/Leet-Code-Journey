class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    List <List <String>> result = [];
    Map <String, List <String>> map = {};
    for (int index = 0; index < strs.length; index ++) {
      List <int> chars = strs[index].runes.toList()..sort();
      String str = String.fromCharCodes(chars);
      if (!map.containsKey(str)) {
        map[str] = [];
      }
      map[str]!.add(strs[index]);
    }
    map.forEach( (key, value) {
      result.add(value);
    });
    return result;
  }
}