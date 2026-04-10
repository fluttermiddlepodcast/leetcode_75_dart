// https://leetcode.com/problems/number-of-provinces/
class NumberOfProvinces {
  int findCircleNum(List<List<int>> isConnected) {
    final length = isConnected.length;
    if (length == 0) {
      return 0;
    }

    final visited = List.filled(length, false);
    var provinces = 0;

    void dfs(int city) {
      visited[city] = true;

      for (var neighbor = 0; neighbor < length; neighbor++) {
        if (isConnected[city][neighbor] == 1 && !visited[neighbor]) {
          dfs(neighbor);
        }
      }
    }

    for (var i = 0; i < length; i++) {
      if (!visited[i]) {
        provinces++;

        dfs(i);
      }
    }

    return provinces;
  }
}
