class Solution {
  String maximumOddBinaryNumber(String binaryString) {
    // Initialize count to keep track of the number of '1's in the binary string.
    var onesCount = 0;

    // Iterate through each character of the binary string input.
    for (var character in binaryString.runes) {
      // Increment the count for every '1' found.
      onesCount += String.fromCharCode(character) == '1' ? 1 : 0;
    }

    // Generate the maximum odd binary number by repeating '1' for (onesCount - 1) times,
    // followed by repeating '0' for (string length - onesCount) times, and then appending '1' at     the end of the string.
    // This maximizes the number of '1' digits at the front, while ensuring the last digit is '1'     for odd number.
    return '1' * (onesCount - 1) + '0' * (binaryString.length - onesCount) + '1';
  }
}