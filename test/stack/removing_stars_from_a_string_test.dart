import 'package:leetcode_dart/stack/removing_stars_from_a_string.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = RemovingStarsFromAString();

      test(
        'lecoe',
        () => expect(
          'lecoe',
          solution.removeStars(
            'leet**cod*e',
          ),
        ),
      );

      test(
        '',
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
