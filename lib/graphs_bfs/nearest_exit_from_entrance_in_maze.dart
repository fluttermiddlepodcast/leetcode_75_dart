// https://leetcode.com/problems/nearest-exit-from-entrance-in-maze/
class NearestExitFromEntranceInMaze {
  int nearestExit(List<List<String>> maze, List<int> entrance) {
    final rows = maze.length;
    final columns = maze[0].length;
    final entRow = entrance[0];
    final entColumn = entrance[1];

    final visited = List.generate(rows, (_) => List.filled(columns, false));

    final queue = <List<int>>[
      [entRow, entColumn, 0],
    ];

    var head = 0;
    visited[entRow][entColumn] = true;

    const dirs = [
      [-1, 0],
      [1, 0],
      [0, -1],
      [0, 1],
    ];

    while (head < queue.length) {
      final current = queue[head++];
      final left = current[1];
      final right = current[0];
      final distance = current[2];

      if ((right == 0 || right == rows - 1 || left == 0 || left == columns - 1) &&
          !(right == entRow && left == entColumn)) {
        return distance;
      }

      for (var dir in dirs) {
        final nLeft = left + dir[1];
        final nRight = right + dir[0];

        if (nRight >= 0 &&
            nRight < rows &&
            nLeft >= 0 &&
            nLeft < columns &&
            maze[nRight][nLeft] == '.' &&
            !visited[nRight][nLeft]) {
          visited[nRight][nLeft] = true;
          queue.add([nRight, nLeft, distance + 1]);
        }
      }
    }

    return -1;
  }
}
