import 'package:leetcode_dart/binary_tree_dfs/leaf_similar_trees.dart';
import 'package:leetcode_dart/common/tree_node.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = LeafSimilarTrees();

      test(
        'true',
        () => expect(
          true,
          solution.leafSimilar(
            TreeNode(
              3,
              TreeNode(
                5,
                TreeNode(6),
                TreeNode(
                  2,
                  TreeNode(7),
                  TreeNode(4),
                ),
              ),
              TreeNode(
                1,
                TreeNode(9),
                TreeNode(8),
              ),
            ),
            TreeNode(
              3,
              TreeNode(
                5,
                TreeNode(6),
                TreeNode(7),
              ),
              TreeNode(
                1,
                TreeNode(4),
                TreeNode(
                  2,
                  TreeNode(9),
                  TreeNode(8),
                ),
              ),
            ),
          ),
        ),
      );

      test(
        'false',
        () => expect(
          false,
          solution.leafSimilar(
            TreeNode(
              1,
              TreeNode(2),
              TreeNode(3),
            ),
            TreeNode(
              1,
              TreeNode(3),
              TreeNode(2),
            ),
          ),
        ),
      );
    },
  );
}
