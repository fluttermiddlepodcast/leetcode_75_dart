import 'package:leetcode_dart/binary_tree_dfs/count_good_nodes_in_binary_tree.dart';
import 'package:leetcode_dart/common/tree_node.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = CountGoodNodesInBinaryTree();

      test(
        '4',
        () => expect(
          4,
          solution.goodNodes(
            TreeNode(
              3,
              TreeNode(
                1,
                TreeNode(3),
                null,
              ),
              TreeNode(
                4,
                TreeNode(1),
                TreeNode(5),
              ),
            ),
          ),
        ),
      );

      test(
        '3',
        () => expect(
          3,
          solution.goodNodes(
            TreeNode(
              3,
              TreeNode(
                3,
                TreeNode(4),
                TreeNode(2),
              ),
              null,
            ),
          ),
        ),
      );

      test(
        '1',
        () => expect(
          1,
          solution.goodNodes(
            TreeNode(1),
          ),
        ),
      );
    },
  );
}
