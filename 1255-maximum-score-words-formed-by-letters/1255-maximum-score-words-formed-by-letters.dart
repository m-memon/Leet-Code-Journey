class Solution {
  int maxScoreWords(List<String> words, List<String> letters, List<int> score) {
    // Create a counts array to store the frequency of each letter
    List<int> counts = List.filled(26, 0);
    for (String letter in letters) {
      counts[letter.codeUnitAt(0) - 'a'.codeUnitAt(0)]++;
    }

    // Call the helper function to find the maximum score
    return wordHelper(words, counts, score, 0);
  }

  int wordHelper(List<String> words, List<int> counts, List<int> score, int index) {
    // Base case
    if (index >= words.length) {
      return 0;
    }

    // Recursive case - exclude the current word
    int excludedSum = wordHelper(words, counts, score, index + 1);

    // Recursive case - include the current word
    int includedSum = 0;
    bool canInclude = true;
    int wordScore = 0;

    for (String char in words[index].split('')) {
      int charIndex = char.codeUnitAt(0) - 'a'.codeUnitAt(0);
      counts[charIndex]--;
      if (counts[charIndex] < 0) {
        canInclude = false;
      }
      wordScore += score[charIndex];
    }

    if (canInclude) {
      includedSum = wordScore + wordHelper(words, counts, score, index + 1);
    }

    // Restore the counts array
    for (String char in words[index].split('')) {
      counts[char.codeUnitAt(0) - 'a'.codeUnitAt(0)]++;
    }

    return excludedSum > includedSum ? excludedSum : includedSum;
  }
}