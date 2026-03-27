import 'package:leetcode_dart/array_string/kids_with_the_greatest_number_of_candies.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = KidsWithTheGreatestNumberOfCandies();

      test(
        'Example 1',
        () => expect(
          [true, true, true, false, true],
          equals(
            solution.kidsWithCandies(
              [2, 3, 5, 1, 3],
              3,
            ),
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          [true, false, false, false, false],
          equals(
            solution.kidsWithCandies(
              [4, 2, 1, 1, 2],
              1,
            ),
          ),
        ),
      );

      test(
        'Example 3',
        () => expect(
          [true, false, true],
          equals(
            solution.kidsWithCandies(
              [12, 1, 12],
              10,
            ),
          ),
        ),
      );
    },
  );
}
