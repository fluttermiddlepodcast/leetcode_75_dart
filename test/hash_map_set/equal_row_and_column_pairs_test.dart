import 'package:leetcode_dart/hash_map_set/equal_row_and_column_pairs.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = EqualRowAndColumnPairs();

      test(
        'Example 1',
        () => expect(
          1,
          solution.equalPairs(
            [
              [3, 2, 1],
              [1, 7, 6],
              [2, 7, 7],
            ],
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          3,
          solution.equalPairs(
            [
              [3, 1, 2, 2],
              [1, 4, 4, 5],
              [2, 4, 2, 2],
              [2, 4, 2, 2],
            ],
          ),
        ),
      );
    },
  );
}
