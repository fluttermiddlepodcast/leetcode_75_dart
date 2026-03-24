import 'package:leetcode_dart/binary_tree_bfs/delete_node_in_a_bst.dart';
import 'package:test/test.dart';

import '../common/binary_tree.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = DeleteNodeInABST();

      test(
        '[5, 4, 6, 2, null, null, 7]',
        () => expect(
          true,
          compareBinaryTrees(
            binaryTreeFromList(
              [5, 4, 6, 2, null, null, 7],
            ),
            solution.deleteNode(
              binaryTreeFromList(
                [5, 3, 6, 2, 4, null, 7],
              ),
              3,
            ),
          ),
        ),
      );

      test(
        '[5, 3, 6, 2, 4, null, 7]',
        () => expect(
          true,
          compareBinaryTrees(
            binaryTreeFromList(
              [5, 3, 6, 2, 4, null, 7],
            ),
            solution.deleteNode(
              binaryTreeFromList(
                [5, 3, 6, 2, 4, null, 7],
              ),
              0,
            ),
          ),
        ),
      );

      test(
        '[]',
        () => expect(
          true,
          compareBinaryTrees(
            null,
            solution.deleteNode(
              null,
              5,
            ),
          ),
        ),
      );
    },
  );
}
