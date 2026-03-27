import 'package:leetcode_dart/binary_tree_dfs/path_sum_iii.dart';
import 'package:test/test.dart';

import '../common/binary_tree.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = PathSumIII();

      test(
        'Example 1',
        () => expect(
          3,
          solution.pathSum(
            binaryTreeFromList(
              [10, 5, -3, 3, 2, null, 11, 3, -2, null, 1],
            ),
            8,
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          3,
          solution.pathSum(
            binaryTreeFromList(
              [5, 4, 8, 11, null, 13, 4, 7, 2, null, null, 5, 1],
            ),
            22,
          ),
        ),
      );
    },
  );
}
