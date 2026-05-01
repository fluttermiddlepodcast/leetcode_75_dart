import 'package:leetcode_dart/dp_multidimensional/edit_distance.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = EditDistance();

      test(
        'Example 1',
        () => expect(
          3,
          solution.minDistance(
            'horse',
            'ros',
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          5,
          solution.minDistance(
            'intention',
            'execution',
          ),
        ),
      );
    },
  );
}
