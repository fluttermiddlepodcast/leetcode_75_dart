import 'package:leetcode_dart/two_pointers/is_subsequence.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = IsSubsequence();

      test(
        'true',
        () => expect(
          true,
          solution.isSubsequence(
            'abc',
            'ahbgdc',
          ),
        ),
      );

      test(
        'false',
        () => expect(
          false,
          solution.isSubsequence(
            'axc',
            'ahbgdc',
          ),
        ),
      );
    },
  );
}
