import 'package:leetcode_dart/bit_manipulation/single_number.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = SingleNumber();

      test(
        'Example 1',
        () => expect(
          1,
          solution.singleNumber(
            [2, 2, 1],
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          4,
          solution.singleNumber(
            [4, 1, 2, 1, 2],
          ),
        ),
      );

      test(
        'Example 3',
        () => expect(
          1,
          solution.singleNumber(
            [1],
          ),
        ),
      );
    },
  );
}
