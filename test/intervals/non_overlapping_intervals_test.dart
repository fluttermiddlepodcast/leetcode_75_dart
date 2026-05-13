import 'package:leetcode_dart/intervals/non_overlapping_intervals.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = NonOverlappingIntervals();

      test(
        'Example 1',
        () => expect(
          1,
          solution.eraseOverlapIntervals(
            [
              [1, 2],
              [2, 3],
              [3, 4],
              [1, 3],
            ],
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          2,
          solution.eraseOverlapIntervals(
            [
              [1, 2],
              [1, 2],
              [1, 2],
            ],
          ),
        ),
      );

      test(
        'Example 3',
        () => expect(
          0,
          solution.eraseOverlapIntervals(
            [
              [1, 2],
              [2, 3],
            ],
          ),
        ),
      );
    },
  );
}
