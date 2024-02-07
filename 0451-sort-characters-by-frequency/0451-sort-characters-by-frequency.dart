class Solution {
  String frequencySort(String s) {
    Map<String, int> tempMap = {};
    for (int index = 0; index < s.length; index++) {
      tempMap[s[index]] = (tempMap[s[index]] ?? 0) +1;
    }
    List <MapEntry <String, int>> sortedEntries = tempMap.entries.toList();
    sortedEntries.sort((a, b) => b.value.compareTo(a.value));
    String result = "";
    for (var entry in sortedEntries) {
      result += entry.key * entry.value;
    }
    return result;
  }
}