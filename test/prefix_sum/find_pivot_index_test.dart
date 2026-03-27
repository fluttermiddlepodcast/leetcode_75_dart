import 'package:leetcode_dart/prefix_sum/find_pivot_index.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = FindPivotIndex();

      test(
        'Example 1',
        () => expect(
          3,
          solution.pivotIndex(
            [1, 7, 3, 6, 5, 6],
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          -1,
          solution.pivotIndex(
            [1, 2, 3],
          ),
        ),
      );

      test(
        'Example 3',
        () => expect(
          0,
          solution.pivotIndex(
            [2, 1, -1],
          ),
        ),
      );
    },
  );
}
