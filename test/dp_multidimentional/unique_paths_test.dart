import 'package:leetcode_dart/dp_multidimensional/unique_paths.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = UniquePaths();

      test(
        'Example 1',
        () => expect(
          28,
          solution.uniquePaths(3, 7),
        ),
      );

      test(
        'Example 2',
        () => expect(
          3,
          solution.uniquePaths(3, 2),
        ),
      );
    },
  );
}
