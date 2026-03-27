import 'package:leetcode_dart/binary_tree_bfs/maximum_level_sum_of_a_binary_tree.dart';
import 'package:test/test.dart';

import '../common/binary_tree.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = MaximumLevelSumOfABinaryTree();

      test(
        'Example 1',
        () => expect(
          2,
          equals(
            solution.maxLevelSum(
              binaryTreeFromList(
                [1, 7, 0, 7, -8, null, null],
              ),
            ),
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          2,
          equals(
            solution.maxLevelSum(
              binaryTreeFromList(
                [989, null, 10250, 98693, -89388, null, null, null, -32127],
              ),
            ),
          ),
        ),
      );
    },
  );
}
