import 'package:leetcode_dart/monotonic_stack/daily_temperatures.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = DailyTemperatures();

      test(
        'Example 1',
        () => expect(
          [1, 1, 4, 2, 1, 1, 0, 0],
          equals(
            solution.dailyTemperatures(
              [73, 74, 75, 71, 69, 72, 76, 73],
            ),
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          [1, 1, 1, 0],
          equals(
            solution.dailyTemperatures(
              [30, 40, 50, 60],
            ),
          ),
        ),
      );

      test(
        'Example 3',
        () => expect(
          [1, 1, 0],
          equals(
            solution.dailyTemperatures(
              [30, 60, 90],
            ),
          ),
        ),
      );
    },
  );
}
