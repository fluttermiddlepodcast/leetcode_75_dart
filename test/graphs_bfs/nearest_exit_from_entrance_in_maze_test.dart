import 'package:leetcode_dart/graphs_bfs/nearest_exit_from_entrance_in_maze.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = NearestExitFromEntranceInMaze();

      test(
        'Example 1',
        () => expect(
          1,
          solution.nearestExit(
            [
              ["+", "+", ".", "+"],
              [".", ".", ".", "+"],
              ["+", "+", "+", "."],
            ],
            [1, 2],
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          2,
          solution.nearestExit(
            [
              ["+", "+", "+"],
              [".", ".", "."],
              ["+", "+", "+"],
            ],
            [1, 0],
          ),
        ),
      );

      test(
        'Example 3',
        () => expect(
          -1,
          solution.nearestExit(
            [
              [".", "+"],
            ],
            [0, 0],
          ),
        ),
      );
    },
  );
}
