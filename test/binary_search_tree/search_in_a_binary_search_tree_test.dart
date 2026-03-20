import 'package:leetcode_dart/binary_search_tree/search_in_a_binary_search_tree.dart';
import 'package:leetcode_dart/common/tree_node.dart';
import 'package:test/test.dart';

import '../common/binary_tree.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = SearchInABinarySearchTree();

      test(
        '[2, 1, 3]',
        () {
          final targetNode = binaryTreeFromList(
            [2, 1, 3],
          );
          final root = TreeNode(
            4,
            targetNode,
            TreeNode(7),
          );

          expect(
            targetNode,
            solution.searchBST(
              root,
              2,
            ),
          );
        },
      );

      test(
        '[]',
        () => expect(
          null,
          solution.searchBST(
            binaryTreeFromList(
              [4, 2, 7, 1, 3],
            ),
            5,
          ),
        ),
      );
    },
  );
}
