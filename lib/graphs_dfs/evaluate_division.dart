// https://leetcode.com/problems/evaluate-division/
class EvaluateDivision {
  List<double> calcEquation(List<List<String>> equations, List<double> values, List<List<String>> queries) {
    final graph = <String, Map<String, double>>{};

    for (var i = 0; i < equations.length; i++) {
      final a = equations[i][0];
      final b = equations[i][1];
      final val = values[i];

      graph.putIfAbsent(a, () => {})[b] = val;
      graph.putIfAbsent(b, () => {})[a] = 1.0 / val;
    }

    double? dfs(String current, String target, double product, Set<String> visited) {
      if (current == target) {
        return product;
      }

      visited.add(current);

      final neighbors = graph[current];
      if (neighbors != null) {
        for (final next in neighbors.keys) {
          if (!visited.contains(next)) {
            final result = dfs(next, target, product * neighbors[next]!, visited);

            if (result != null) {
              return result;
            }
          }
        }
      }

      return null;
    }

    final results = <double>[];

    for (final query in queries) {
      final c = query[0];
      final d = query[1];

      if (!graph.containsKey(c) || !graph.containsKey(d)) {
        results.add(-1.0);
      } else if (c == d) {
        results.add(1.0);
      } else {
        results.add(dfs(c, d, 1.0, {}) ?? -1.0);
      }
    }

    return results;
  }
}
