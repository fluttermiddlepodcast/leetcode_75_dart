import 'package:leetcode_dart/stack/decode_string.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = DecodeString();

      test(
        'aaabcbc',
        () => expect(
          'aaabcbc',
          solution.decodeString(
            '3[a]2[bc]',
          ),
        ),
      );

      test(
        'accaccacc',
        () => expect(
          'accaccacc',
          solution.decodeString(
            '3[a2[c]]',
          ),
        ),
      );

      test(
        'abcabccdcdcdef',
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
