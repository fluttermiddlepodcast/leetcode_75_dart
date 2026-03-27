import 'package:leetcode_dart/binary_tree_dfs/leaf_similar_trees.dart';
import 'package:test/test.dart';

import '../common/binary_tree.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = LeafSimilarTrees();

      test(
        'Example 1',
        () => expect(
          true,
          solution.leafSimilar(
            binaryTreeFromList(
              [3, 5, 1, 6, 2, 9, 8, null, null, 7, 4],
            ),
            binaryTreeFromList(
              [3, 5, 1, 6, 7, 4, 2, null, null, null, null, null, null, 9, 8],
            ),
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          false,
          solution.leafSimilar(
            binaryTreeFromList(
              [1, 2, 3],
            ),
            binaryTreeFromList(
              [1, 3, 2],
            ),
          ),
        ),
      );
    },
  );
}
