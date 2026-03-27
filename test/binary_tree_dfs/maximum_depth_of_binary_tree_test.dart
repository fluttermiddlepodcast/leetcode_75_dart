import 'package:leetcode_dart/binary_tree_dfs/maximum_depth_of_binary_tree.dart';
import 'package:test/test.dart';

import '../common/binary_tree.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = MaximumDepthOfBinaryTree();

      test(
        'Example 1',
        () => expect(
          3,
          solution.maxDepth(
            binaryTreeFromList(
              [3, 9, 20, null, null, 15, 7],
            ),
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          2,
          solution.maxDepth(
            binaryTreeFromList(
              [1, null, 2],
            ),
          ),
        ),
      );
    },
  );
}
