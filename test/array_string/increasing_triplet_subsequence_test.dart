import 'package:leetcode_dart/array_string/increasing_triplet_subsequence.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = IncreasingTripletSubsequence();

      test(
        'Example 1',
        () => expect(
          true,
          solution.increasingTriplet(
            [1, 2, 3, 4, 5],
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          false,
          solution.increasingTriplet(
            [5, 4, 3, 2, 1],
          ),
        ),
      );

      test(
        'Example 3',
        () => expect(
          true,
          solution.increasingTriplet(
            [2, 1, 5, 0, 4, 6],
          ),
        ),
      );
    },
  );
}
