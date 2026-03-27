import 'package:leetcode_dart/array_string/greatest_common_divisor_of_strings.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = GreatestCommonDivisorOfStrings();

      test(
        'Example 1',
        () => expect(
          'ABC',
          solution.gcdOfStrings(
            'ABCABC',
            'ABC',
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          'AB',
          solution.gcdOfStrings(
            'ABABAB',
            'ABAB',
          ),
        ),
      );

      test(
        'Example 3',
        () => expect(
          '',
          solution.gcdOfStrings(
            'LEET',
            'CODE',
          ),
        ),
      );

      test(
        'Example 4',
        () => expect(
          '',
          solution.gcdOfStrings(
            'AAAAAB',
            'AAA',
          ),
        ),
      );
    },
  );
}
