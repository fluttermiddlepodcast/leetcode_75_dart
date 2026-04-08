import 'package:leetcode_dart/heap_priority_queue/maximum_subsequence_score.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = MaximumSubsequenceScore();

      test(
        'Example 1',
        () => expect(
          12,
          solution.maxScore(
            [1, 3, 3, 2],
            [2, 1, 3, 4],
            3,
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          30,
          solution.maxScore(
            [4, 2, 3, 1, 1],
            [7, 5, 10, 9, 6],
            1,
          ),
        ),
      );
    },
  );
}
