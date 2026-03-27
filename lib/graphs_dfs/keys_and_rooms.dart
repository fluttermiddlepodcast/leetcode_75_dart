class KeysAndRooms {
  bool canVisitAllRooms(List<List<int>> rooms) {
    final seen = List<bool>.filled(rooms.length, false);
    seen[0] = true;

    final stack = <int>[0];

    while (stack.isNotEmpty) {
      final node = stack.removeLast();
      for (final next in rooms[node]) {
        if (!seen[next]) {
          seen[next] = true;
          stack.add(next);
        }
      }
    }

    for (bool visited in seen) {
      if (!visited) {
        return false;
      }
    }

    return true;
  }
}
