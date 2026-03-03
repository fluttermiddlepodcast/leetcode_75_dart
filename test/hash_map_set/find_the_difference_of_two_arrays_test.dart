import 'package:leetcode_dart/hash_map_set/find_the_difference_of_two_arrays.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = FindTheDifferenceOfTwoArrays();

      test(
        '[[1, 3], [4, 6]]',
        () => expect(
          [
            [1, 3],
            [4, 6],
          ],
          equals(
            solution.findDifference(
              [1, 2, 3],
              [2, 4, 6],
            ),
          ),
        ),
      );

      test(
        '[[3], []]',
        () => expect(
          [
            [3],
            [],
          ],
          equals(
            solution.findDifference(
              [1, 2, 3, 3],
              [1, 1, 2, 2],
            ),
          ),
        ),
      );
    },
  );
}
