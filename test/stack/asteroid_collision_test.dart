import 'package:leetcode_dart/stack/asteroid_collision.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = AsteroidCollision();

      test(
        '[5, 10]',
        () => expect(
          [5, 10],
          equals(
            solution.asteroidCollision(
              [5, 10, -5],
            ),
          ),
        ),
      );

      test(
        '[]',
        () => expect(
          [],
          equals(
            solution.asteroidCollision(
              [8, -8],
            ),
          ),
        ),
      );

      test(
        '[-6, 2, 4]',
        () => expect(
          [-6, 2, 4],
          equals(
            solution.asteroidCollision(
              [3, 5, -6, 2, -1, 4],
            ),
          ),
        ),
      );
    },
  );
}
