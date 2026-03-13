import 'package:leetcode_dart/binary_tree_dfs/count_good_nodes_in_binary_tree.dart';
import 'package:test/test.dart';

import '../common/binary_tree.dart';

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
            binaryTreeFromList(
              [3, 1, 4, 3, null, 1, 5],
            ),
          ),
        ),
      );

      test(
        '3',
        () => expect(
          3,
          solution.goodNodes(
            binaryTreeFromList(
              [3, 3, null, 4, 2],
            ),
          ),
        ),
      );

      test(
        '1',
        () => expect(
          1,
          solution.goodNodes(
            binaryTreeFromList(
              [1],
            ),
          ),
        ),
      );
    },
  );
}
