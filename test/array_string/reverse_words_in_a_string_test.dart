import 'package:leetcode_dart/array_string/reverse_words_in_a_string.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = ReverseWordsInAString();

      test(
        'Example 1',
        () => expect(
          'blue is sky the',
          solution.reverseWords(
            'the sky is blue',
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          'world hello',
          solution.reverseWords(
            '  hello world  ',
          ),
        ),
      );

      test(
        'Example 3',
        () => expect(
          'example good a',
          solution.reverseWords(
            'a good   example',
          ),
        ),
      );
    },
  );
}
