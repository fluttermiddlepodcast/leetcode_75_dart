import 'package:leetcode_dart/binary_tree_dfs/lowest_common_ancestor_of_a_binary_tree.dart';
import 'package:leetcode_dart/common/tree_node.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = LowestCommonAncestorOfABinaryTree();

      test(
        'Example 1',
        () {
          final p = TreeNode(
            5,
            TreeNode(6),
            TreeNode(
              2,
              TreeNode(7),
              TreeNode(4),
            ),
          );
          final q = TreeNode(
            1,
            TreeNode(0),
            TreeNode(8),
          );
          final root = TreeNode(3, p, q);

          expect(
            root,
            solution.lowestCommonAncestor(
              root,
              p,
              q,
            ),
          );
        },
      );

      test(
        'Example 2',
        () {
          final q = TreeNode(4);
          final p = TreeNode(
            5,
            TreeNode(6),
            TreeNode(
              2,
              TreeNode(7),
              q,
            ),
          );
          final root = TreeNode(
            3,
            p,
            TreeNode(
              1,
              TreeNode(0),
              TreeNode(8),
            ),
          );

          expect(
            p,
            solution.lowestCommonAncestor(
              root,
              p,
              q,
            ),
          );
        },
      );

      test(
        'Example 3',
        () {
          final q = TreeNode(2);
          final p = TreeNode(1, q);
          final root = p;

          expect(
            p,
            solution.lowestCommonAncestor(
              root,
              p,
              q,
            ),
          );
        },
      );
    },
  );
}
