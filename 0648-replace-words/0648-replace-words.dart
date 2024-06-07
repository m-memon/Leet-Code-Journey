class TrieNode {
  List<TrieNode?> children;
  String? word;

  TrieNode() : children = List<TrieNode?>.filled(26, null), word = null;
}

class Solution {
  TrieNode root = TrieNode();

  String replaceWords(List<String> dictionary, String sentence) {
    for (String word in dictionary) {
      insert(word);
    }

    List<String> words = sentence.split(' ');
    for (int i = 0; i < words.length; i++) {
      words[i] = search(words[i]);
    }

    return words.join(' ');
  }

  void insert(String word) {
    TrieNode node = root;
    for (int i = 0; i < word.length; i++) {
      int index = word.codeUnitAt(i) - 'a'.codeUnitAt(0);
      if (node.children[index] == null) {
        node.children[index] = TrieNode();
      }
      node = node.children[index]!;
    }
    node.word = word;
  }

  String search(String word) {
    TrieNode node = root;
    for (int i = 0; i < word.length; i++) {
      if (node.word != null) {
        return node.word!;
      }
      int index = word.codeUnitAt(i) - 'a'.codeUnitAt(0);
      if (node.children[index] == null) {
        return word;
      }
      node = node.children[index]!;
    }
    return word;
  }
}