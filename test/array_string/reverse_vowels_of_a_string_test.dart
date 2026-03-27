import 'package:leetcode_dart/array_string/reverse_vowels_of_a_string.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = ReverseVowelsOfAString();

      test(
        'Example 1',
        () => expect(
          'AceCreIm',
          solution.reverseVowels(
            'IceCreAm',
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          'leotcede',
          solution.reverseVowels(
            'leetcode',
          ),
        ),
      );
    },
  );
}
