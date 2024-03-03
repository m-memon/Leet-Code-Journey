import 'dart:convert';

class Solution {
  int myAtoi(String s) {
    s = trim(s);
    if (s.isEmpty) return 0;

    final sign = s[0] == '-' ? -1 : 1;
    if (s[0] == '+' || s[0] == '-') s = s.substring(1);

    var num = 0;

    for (var i = 0; i < s.length; i++) {
      final c = s[i];
      if (!isDigit(c)) break;
      num = num * 10 + (c.codeUnitAt(0) - '0'.codeUnitAt(0));
      if (sign * num < (-2147483648)) return -2147483648;
      if (sign * num > 2147483647) return 2147483647;
    }

    return sign * num;
  }

  String trim(String s) {
    return s.trim();
  }

  bool isDigit(String c) {
    return int.tryParse(c) != null;
  }
}