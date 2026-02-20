import 'package:leetcode_dart/two_pointers/container_with_most_water.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = ContainerWithMostWater();

      test(
        '49',
        () => expect(
          49,
          solution.maxArea(
            [1, 8, 6, 2, 5, 4, 8, 3, 7],
          ),
        ),
      );

      test(
        '1',
        () => expect(
          1,
          solution.maxArea(
            [1, 1],
          ),
        ),
      );
    },
  );
}
