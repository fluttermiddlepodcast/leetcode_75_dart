import 'package:leetcode_dart/dp_multidimensional/longest_common_subsequence.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = LongestCommonSubsequence();

      test(
        'Example 1',
        () => expect(
          3,
          solution.longestCommonSubsequence(
            'abcde',
            'ace',
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          3,
          solution.longestCommonSubsequence(
            'abc',
            'abc',
          ),
        ),
      );

      test(
        'Example 3',
        () => expect(
          0,
          solution.longestCommonSubsequence(
            'abc',
            'def',
          ),
        ),
      );
    },
  );
}
