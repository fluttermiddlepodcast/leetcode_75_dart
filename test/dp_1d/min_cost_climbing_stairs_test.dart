import 'package:leetcode_dart/dp_1d/min_cost_climbing_stairs.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = MinCostClimbingStairs();

      test(
        'Example 1',
        () => expect(
          15,
          solution.minCostClimbingStairs(
            [10, 15, 20],
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          6,
          solution.minCostClimbingStairs(
            [1, 100, 1, 1, 1, 100, 1, 1, 100, 1],
          ),
        ),
      );
    },
  );
}
