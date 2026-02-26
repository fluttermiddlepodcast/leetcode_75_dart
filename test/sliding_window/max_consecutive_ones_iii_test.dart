import 'package:leetcode_dart/sliding_window/max_consecutive_ones_iii.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = MaxConsecutiveOnesIII();

      test(
        '6',
        () => expect(
          6,
          solution.longestOnes(
            [1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0],
            2,
          ),
        ),
      );

      test(
        '10',
        () => expect(
          10,
          solution.longestOnes(
            [0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1],
            3,
          ),
        ),
      );
    },
  );
}
