import 'package:leetcode_dart/sliding_window/longest_subarray_of_1s_after_deleting_one_element.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = LongestSubarrayOf1sAfterDeletingOneElement();

      test(
        '3',
        () => expect(
          3,
          solution.longestSubarray(
            [1, 1, 0, 1],
          ),
        ),
      );

      test(
        '5',
        () => expect(
          5,
          solution.longestSubarray(
            [0, 1, 1, 1, 0, 1, 1, 0, 1],
          ),
        ),
      );

      test(
        '2',
        () => expect(
          2,
          solution.longestSubarray(
            [1, 1, 1],
          ),
        ),
      );
    },
  );
}
