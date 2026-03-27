import 'package:leetcode_dart/graphs_dfs/keys_and_rooms.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = KeysAndRooms();

      test(
        'Example 1',
        () => expect(
          true,
          solution.canVisitAllRooms(
            [
              [1],
              [2],
              [3],
              [],
            ],
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          false,
          solution.canVisitAllRooms(
            [
              [1, 3],
              [3, 0, 1],
              [2],
              [0],
            ],
          ),
        ),
      );
    },
  );
}
