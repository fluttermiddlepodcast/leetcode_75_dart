// https://leetcode.com/problems/implement-trie-prefix-tree/
class Trie {
  final root = _TrieNode();

  void insert(String word) {
    var node = root;
    for (final char in word.split('')) {
      node = node.children.putIfAbsent(char, () => _TrieNode());
    }

    node.isEnd = true;
  }

  bool search(String word) {
    final node = _searchNodeByPrefix(word);

    return node != null && node.isEnd;
  }

  _TrieNode? _searchNodeByPrefix(String prefix) {
    var node = root;
    for (final char in prefix.split('')) {
      if (!node.children.containsKey(char)) {
        return null;
      }

      node = node.children[char]!;
    }

    return node;
  }

  bool startsWith(String prefix) {
    return _searchNodeByPrefix(prefix) != null;
  }
}

class _TrieNode {
  var children = <String, _TrieNode>{};
  var isEnd = false;
}
