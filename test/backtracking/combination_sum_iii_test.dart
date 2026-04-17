import 'package:leetcode_dart/backtracking/combination_sum_iii.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = CombinationSumIII();

      test(
        'Example 1',
        () => expect(
          [
            [1, 2, 4],
          ],
          equals(
            solution.combinationSum3(3, 7),
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          [
            [1, 2, 6],
            [1, 3, 5],
            [2, 3, 4],
          ],
          equals(
            solution.combinationSum3(3, 9),
          ),
        ),
      );

      test(
        'Example 3',
        () => expect(
          [],
          equals(
            solution.combinationSum3(4, 1),
          ),
        ),
      );
    },
  );
}
