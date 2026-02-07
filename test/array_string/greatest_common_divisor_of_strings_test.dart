import 'package:leetcode_dart/array_string/greatest_common_divisor_of_strings.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = GreatestCommonDivisorOfStrings();

      test(
        'ABC',
        () => expect(
          'ABC',
          solution.gcdOfStrings(
            'ABCABC',
            'ABC',
          ),
        ),
      );

      test(
        'AB',
        () => expect(
          'AB',
          solution.gcdOfStrings(
            'ABABAB',
            'ABAB',
          ),
        ),
      );

      test(
        '',
        () => expect(
          '',
          solution.gcdOfStrings(
            'LEET',
            'CODE',
          ),
        ),
      );

      test(
        '',
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
