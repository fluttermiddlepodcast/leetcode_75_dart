import 'package:collection/collection.dart';

class KthLargestElementInAnArray {
  int findKthLargest(List<int> nums, int k) {
    final heap = HeapPriorityQueue<int>((a, b) => a.compareTo(b));

    for (final num in nums) {
      heap.add(num);

      if (heap.length > k) {
        heap.removeFirst();
      }
    }

    return heap.first;
  }
}
