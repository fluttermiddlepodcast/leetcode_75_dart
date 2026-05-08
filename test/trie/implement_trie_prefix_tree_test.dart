import 'package:leetcode_dart/trie/implement_trie_prefix_tree.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      test(
        'Example 1',
        () {
          final trie = Trie();

          trie.insert("apple");

          expect(true, trie.search("apple"));
          expect(false, trie.search("app"));
          expect(true, trie.startsWith("app"));

          trie.insert("app");

          expect(true, trie.search("app"));
        },
      );
    },
  );
}
