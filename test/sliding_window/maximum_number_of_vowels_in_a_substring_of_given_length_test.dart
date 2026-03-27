import 'package:leetcode_dart/sliding_window/maximum_number_of_vowels_in_a_substring_of_given_length.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = MaximumNumberOfVowelsInASubstringOfGivenLength();

      test(
        'Example 1',
        () => expect(
          3,
          solution.maxVowels(
            "abciiidef",
            3,
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          2,
          solution.maxVowels(
            "aeiou",
            2,
          ),
        ),
      );

      test(
        'Example 3',
        () => expect(
          2,
          solution.maxVowels(
            "leetcode",
            3,
          ),
        ),
      );
    },
  );
}
