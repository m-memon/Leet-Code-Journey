import 'dart:collection';

class Solution {
  bool isNStraightHand(List<int> hand, int groupSize) {
    var count = SplayTreeMap<int, int>();
    for (var card in hand) {
      count.update(card, (value) => value + 1, ifAbsent: () => 1);
    }

    for (var start in count.keys) {
      var value = count[start]!;
      if (value > 0) {
        for (var i = start; i < start + groupSize; ++i) {
          if (!count.containsKey(i) || count[i]! < value) {
            return false;
          }
          count[i] = count[i]! - value;
        }
      }
    }

    return true;
  }
}