import 'package:leetcode_dart/bit_manipulation/counting_bits.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = CountingBits();

      test(
        'Example 1',
        () => expect(
          [0, 1, 1],
          equals(solution.countBits(2)),
        ),
      );

      test(
        'Example 2',
        () => expect(
          [0, 1, 1, 2, 1, 2],
          equals(solution.countBits(5)),
        ),
      );
    },
  );
}
