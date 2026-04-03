class RottingOranges {
  int orangesRotting(List<List<int>> grid) {
    if (grid.isEmpty) {
      return 0;
    }

    final rows = grid.length;
    final columns = grid[0].length;

    final queue = <List<int>>[];
    var freshCount = 0;

    for (var r = 0; r < rows; r++) {
      for (var c = 0; c < columns; c++) {
        if (grid[r][c] == 2) {
          queue.add([r, c, 0]);
        } else if (grid[r][c] == 1) {
          freshCount++;
        }
      }
    }

    if (freshCount == 0) {
      return 0;
    }

    const dirs = [
      [-1, 0],
      [1, 0],
      [0, -1],
      [0, 1],
    ];

    var minutes = 0;
    var head = 0;

    while (head < queue.length) {
      final curr = queue[head++];

      final r = curr[0];
      final c = curr[1];
      final t = curr[2];

      minutes = t;

      for (var dir in dirs) {
        final nr = r + dir[0];
        final nc = c + dir[1];

        if (nr >= 0 && nr < rows && nc >= 0 && nc < columns && grid[nr][nc] == 1) {
          grid[nr][nc] = 2;
          freshCount--;

          queue.add([nr, nc, t + 1]);
        }
      }
    }

    return freshCount == 0 ? minutes : -1;
  }
}
