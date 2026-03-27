import 'package:leetcode_dart/sliding_window/maximum_average_subarray_i.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = MaximumAverageSubarrayI();

      test(
        'Example 1',
        () => expect(
          12.75000,
          solution.findMaxAverage(
            [1, 12, -5, -6, 50, 3],
            4,
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          5.00000,
          solution.findMaxAverage(
            [5],
            1,
          ),
        ),
      );
    },
  );
}
