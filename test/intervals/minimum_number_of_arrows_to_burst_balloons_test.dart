import 'package:leetcode_dart/intervals/minimum_number_of_arrows_to_burst_balloons.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = MinimumNumberOfArrowsToBurstBalloons();

      test(
        'Example 1',
        () => expect(
          2,
          solution.findMinArrowShots([
            [10, 16],
            [2, 8],
            [1, 6],
            [7, 12],
          ]),
        ),
      );

      test(
        'Example 2',
        () => expect(
          4,
          solution.findMinArrowShots(
            [
              [1, 2],
              [3, 4],
              [5, 6],
              [7, 8],
            ],
          ),
        ),
      );

      test(
        'Example 3',
        () => expect(
          2,
          solution.findMinArrowShots(
            [
              [1, 2],
              [2, 3],
              [3, 4],
              [4, 5],
            ],
          ),
        ),
      );
    },
  );
}
