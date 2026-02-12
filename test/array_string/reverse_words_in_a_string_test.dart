import 'package:leetcode_dart/array_string/reverse_words_in_a_string.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = ReverseWordsInAString();

      test(
        'blue is sky the',
        () => expect(
          'blue is sky the',
          solution.reverseWords(
            'the sky is blue',
          ),
        ),
      );

      test(
        'world hello',
        () => expect(
          'world hello',
          solution.reverseWords(
            '  hello world  ',
          ),
        ),
      );

      test(
        'example good a',
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
