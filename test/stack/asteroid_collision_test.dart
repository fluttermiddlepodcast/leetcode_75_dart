import 'package:leetcode_dart/stack/asteroid_collision.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = AsteroidCollision();

      test(
        'Example 1',
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
        'Example 2',
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
        'Example 3',
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
