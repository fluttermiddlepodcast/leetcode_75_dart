import 'package:leetcode_dart/dp_1d/nth_tribonacci_number.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = NthTribonacciNumber();

      test(
        'Example 1',
        () => expect(
          4,
          solution.tribonacci(4),
        ),
      );

      test(
        'Example 2',
        () => expect(
          1389537,
          solution.tribonacci(25),
        ),
      );
    },
  );
}
