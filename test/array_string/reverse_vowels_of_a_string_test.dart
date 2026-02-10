import 'package:leetcode_dart/array_string/reverse_vowels_of_a_string.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = ReverseVowelsOfAString();

      test(
        'AceCreIm',
        () => expect(
          'AceCreIm',
          solution.reverseVowels(
            'IceCreAm',
          ),
        ),
      );

      test(
        'leotcede',
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
