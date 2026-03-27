import 'package:leetcode_dart/two_pointers/is_subsequence.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = IsSubsequence();

      test(
        'Example 1',
        () => expect(
          true,
          solution.isSubsequence(
            'abc',
            'ahbgdc',
          ),
        ),
      );

      test(
        'Example 2',
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
