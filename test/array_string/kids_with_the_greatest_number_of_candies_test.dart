import 'package:leetcode_dart/array_string/kids_with_the_greatest_number_of_candies.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = KidsWithTheGreatestNumberOfCandies();

      test(
        'true, true, true, false, true',
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
        'true, false, false, false, false',
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
        'true, false, true',
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
