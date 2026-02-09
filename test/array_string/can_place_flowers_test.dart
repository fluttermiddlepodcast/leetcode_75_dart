import 'package:leetcode_dart/array_string/can_place_flowers.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = CanPlaceFlowers();

      test(
        'true',
        () => expect(
          true,
          solution.canPlaceFlowers(
            [1, 0, 0, 0, 1],
            1,
          ),
        ),
      );

      test(
        'false',
        () => expect(
          false,
          solution.canPlaceFlowers(
            [1, 0, 0, 0, 1],
            2,
          ),
        ),
      );
    },
  );
}
