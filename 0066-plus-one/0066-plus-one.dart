class Solution {
  List<int> plusOne(List<int> digits) {
    BigInt updateValue = BigInt.parse(digits.join('')) + BigInt.one;
    return updateValue.toString().split('').map(int.parse).toList();
  }
}   