import 'package:leetcode_dart/prefix_sum/find_the_highest_altitude.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = FindTheHighestAltitude();

      test(
        'Example 1',
        () => expect(
          1,
          solution.largestAltitude(
            [-5, 1, 5, 0, -7],
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          0,
          solution.largestAltitude(
            [-4, -3, -2, -1, 4, 3, 2],
          ),
        ),
      );
    },
  );
}
