import 'package:leetcode_dart/dp_1d/house_robber.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = HouseRobber();

      test(
        'Example 1',
        () => expect(
          4,
          solution.rob(
            [1, 2, 3, 1],
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          12,
          solution.rob(
            [2, 7, 9, 3, 1],
          ),
        ),
      );
    },
  );
}
