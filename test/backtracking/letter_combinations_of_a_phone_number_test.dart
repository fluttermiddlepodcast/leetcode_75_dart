import 'package:leetcode_dart/backtracking/letter_combinations_of_a_phone_number.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = LetterCombinationsOfAPhoneNumber();

      test(
        'Example 1',
        () => expect(
          ['ad', 'ae', 'af', 'bd', 'be', 'bf', 'cd', 'ce', 'cf'],
          equals(
            solution.letterCombinations('23'),
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          ['a', 'b', 'c'],
          equals(
            solution.letterCombinations('2'),
          ),
        ),
      );
    },
  );
}
