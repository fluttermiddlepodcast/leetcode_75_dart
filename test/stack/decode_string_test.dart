import 'package:leetcode_dart/stack/decode_string.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = DecodeString();

      test(
        'Example 1',
        () => expect(
          'aaabcbc',
          solution.decodeString(
            '3[a]2[bc]',
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          'accaccacc',
          solution.decodeString(
            '3[a2[c]]',
          ),
        ),
      );

      test(
        'Example 3',
        () => expect(
          'abcabccdcdcdef',
          solution.decodeString(
            '2[abc]3[cd]ef',
          ),
        ),
      );
    },
  );
}
