import 'package:leetcode_dart/dp_1d/domino_and_tromino_tiling.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = DominoAndTrominoTiling();

      test(
        'Example 1',
        () => expect(
          5,
          solution.numTilings(3),
        ),
      );

      test(
        'Example 2',
        () => expect(
          1,
          solution.numTilings(1),
        ),
      );
    },
  );
}
