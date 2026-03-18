import 'package:leetcode_dart/binary_tree_bfs/binary_tree_right_side_view.dart';
import 'package:test/test.dart';

import '../common/binary_tree.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = BinaryTreeRightSideView();

      test(
        '[1, 3, 4]',
        () => expect(
          [1, 3, 4],
          equals(
            solution.rightSideView(
              binaryTreeFromList(
                [1, 2, 3, null, 5, null, 4],
              ),
            ),
          ),
        ),
      );

      test(
        '[1, 3, 4, 5]',
        () => expect(
          [1, 3, 4, 5],
          equals(
            solution.rightSideView(
              binaryTreeFromList(
                [1, 2, 3, 4, null, null, null, 5],
              ),
            ),
          ),
        ),
      );

      test(
        '[1, 3]',
        () => expect(
          [1, 3],
          equals(
            solution.rightSideView(
              binaryTreeFromList(
                [1, null, 3],
              ),
            ),
          ),
        ),
      );

      test(
        '[]',
        () => expect(
          [],
          equals(
            solution.rightSideView(null),
          ),
        ),
      );
    },
  );
}
