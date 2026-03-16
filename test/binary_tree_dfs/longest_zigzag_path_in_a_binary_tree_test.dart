import 'package:leetcode_dart/binary_tree_dfs/longest_zigzag_path_in_a_binary_tree.dart';
import 'package:test/test.dart';

import '../common/binary_tree.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = LongestZigzagPathInABinaryTree();

      test(
        '3',
        () => expect(
          3,
          solution.longestZigZag(
            binaryTreeFromList(
              [1, null, 1, 1, 1, null, null, 1, 1, null, 1, null, null, null, 1],
            ),
          ),
        ),
      );

      test(
        '4',
        () => expect(
          4,
          solution.longestZigZag(
            binaryTreeFromList(
              [1, 1, 1, null, 1, null, null, 1, 1, null, 1],
            ),
          ),
        ),
      );

      test(
        '0',
        () => expect(
          0,
          solution.longestZigZag(
            binaryTreeFromList(
              [1],
            ),
          ),
        ),
      );
    },
  );
}
