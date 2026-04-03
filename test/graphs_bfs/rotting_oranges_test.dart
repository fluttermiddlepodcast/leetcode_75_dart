import 'package:leetcode_dart/graphs_bfs/rotting_oranges.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = RottingOranges();

      test(
        'Example 1',
        () => expect(
          4,
          solution.orangesRotting(
            [
              [2, 1, 1],
              [1, 1, 0],
              [0, 1, 1],
            ],
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          -1,
          solution.orangesRotting(
            [
              [2, 1, 1],
              [0, 1, 1],
              [1, 0, 1],
            ],
          ),
        ),
      );

      test(
        'Example 3',
        () => expect(
          0,
          solution.orangesRotting(
            [
              [0, 2],
            ],
          ),
        ),
      );
    },
  );
}
