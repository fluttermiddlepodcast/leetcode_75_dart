import 'package:collection/collection.dart';

class SmallestInfiniteSet {
  final _heap = HeapPriorityQueue<int>();
  final _inHeap = <int>{};
  int _next = 1;

  SmallestInfiniteSet();

  int popSmallest() {
    if (_heap.isNotEmpty && _heap.first < _next) {
      final smallest = _heap.removeFirst();
      _inHeap.remove(smallest);

      return smallest;
    }

    return _next++;
  }

  void addBack(int num) {
    if (num < _next && !_inHeap.contains(num)) {
      _heap.add(num);
      _inHeap.add(num);
    }
  }
}
