class ReorderRoutesToMakeAllPathsLeadToTheCityZero {
  int minReorder(int n, List<List<int>> connections) {
    final neighborhood = List.generate(n, (_) => []);

    for (var conn in connections) {
      final a = conn[0];
      final b = conn[1];

      neighborhood[a].add([b, 1]);
      neighborhood[b].add([a, 0]);
    }

    var changes = 0;
    final stack = [
      [0, -1],
    ];

    while (stack.isNotEmpty) {
      var current = stack.removeLast();
      final node = current[0];
      final parent = current[1];

      for (var edge in neighborhood[node]) {
        final neighbor = edge[0];
        final isOutgoing = edge[1];

        if (neighbor != parent) {
          if (isOutgoing == 1) {
            changes++;
          }

          stack.add([neighbor, node]);
        }
      }
    }

    return changes;
  }
}
