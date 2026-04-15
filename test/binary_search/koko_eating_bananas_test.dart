import 'package:leetcode_dart/binary_search/koko_eating_bananas.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = KokoEatingBananas();

      test(
        'Example 1',
        () => expect(
          4,
          solution.minEatingSpeed(
            [3, 6, 7, 11],
            8,
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          30,
          solution.minEatingSpeed(
            [30, 11, 23, 4, 20],
            5,
          ),
        ),
      );

      test(
        'Example 3',
        () => expect(
          23,
          solution.minEatingSpeed(
            [30, 11, 23, 4, 20],
            6,
          ),
        ),
      );
    },
  );
}
