import 'package:leetcode_dart/stack/removing_stars_from_a_string.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = RemovingStarsFromAString();

      test(
        'Example 1',
        () => expect(
          'lecoe',
          solution.removeStars(
            'leet**cod*e',
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          '',
          solution.removeStars(
            'erase*****',
          ),
        ),
      );
    },
  );
}
