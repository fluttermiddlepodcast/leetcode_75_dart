import 'package:leetcode_dart/two_pointers/move_zeroes.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = MoveZeroes();

      test(
        '[1, 3, 12, 0, 0]',
        () {
          final input = [0, 1, 0, 3, 12];

          solution.moveZeroes(input);

          expect(
            [1, 3, 12, 0, 0],
            equals(input),
          );
        },
      );

      test(
        '[0]',
        () {
          final input = [0];

          solution.moveZeroes(input);

          expect(
            [0],
            equals(input),
          );
        },
      );
    },
  );
}
