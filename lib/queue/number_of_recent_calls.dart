class RecentCounter {
  final _requests = <int>[];

  RecentCounter();

  int ping(int t) {
    _requests.add(t);

    while (_requests.first < t - 3000) {
      _requests.removeAt(0);
    }

    return _requests.length;
  }
}
