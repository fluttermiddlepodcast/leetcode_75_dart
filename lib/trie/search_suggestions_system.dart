// https://leetcode.com/problems/search-suggestions-system/
class SearchSuggestionsSystem {
  List<List<String>> suggestedProducts(List<String> products, String searchWord) {
    final root = _TrieNode();

    for (final product in products) {
      _addProductsToTrie(root, product);
    }

    final result = <List<String>>[];
    _TrieNode? currentNode = root;

    for (var i = 0; i < searchWord.length; i++) {
      final ch = searchWord[i];

      if (currentNode != null && currentNode.children.containsKey(ch)) {
        currentNode = currentNode.children[ch];
        result.add(List.from(currentNode!.suggestions));
      } else {
        currentNode = null;
        result.add([]);
      }
    }

    return result;
  }
}

void _addProductsToTrie(_TrieNode root, String product) {
  var node = root;

  for (var i = 0; i < product.length; i++) {
    final ch = product[i];
    node.children.putIfAbsent(ch, () => _TrieNode());
    node = node.children[ch]!;

    if (!node.suggestions.contains(product)) {
      _addSuggestionToProduct(node, product);
    }
  }
}

void _addSuggestionToProduct(_TrieNode node, String product) {
  if (node.suggestions.length < 3) {
    node.suggestions.add(product);
    node.suggestions.sort();
  } else if (product.compareTo(node.suggestions.last) < 0) {
    node.suggestions.add(product);
    node.suggestions.sort();
    node.suggestions.removeLast();
  }
}

class _TrieNode {
  var children = <String, _TrieNode>{};
  var suggestions = <String>[];
}
