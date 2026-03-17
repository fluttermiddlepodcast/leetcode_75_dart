// https://leetcode.com/problems/equal-row-and-column-pairs/
class EqualRowAndColumnPairs {
  int equalPairs(List<List<int>> grid) {
    final rowCount = <String, int>{};

    for (var line in grid) {
      final rowKey = line.join(',');

      rowCount[rowKey] = (rowCount[rowKey] ?? 0) + 1;
    }

    var pairs = 0;

    for (var j = 0; j < grid.length; j++) {
      final column = List.generate(
        grid.length,
        (i) => grid[i][j],
      );
      final columnKey = column.join(',');

      pairs += rowCount[columnKey] ?? 0;
    }

    return pairs;
  }
}
