import 'dart:math';

import 'package:collection/collection.dart';

class MaximumSubsequenceScore {
  int maxScore(List<int> nums1, List<int> nums2, int k) {
    final pairs = List<List<int>>.generate(nums1.length, (i) => [nums2[i], nums1[i]]);
    pairs.sort((a, b) => b[0].compareTo(a[0]));

    final minHeap = HeapPriorityQueue<int>();
    var sum = 0;
    var maxScore = 0;

    for (final pair in pairs) {
      final n2 = pair[0];
      final n1 = pair[1];

      minHeap.add(n1);
      sum += n1;

      if (minHeap.length > k) {
        sum -= minHeap.removeFirst();
      }

      if (minHeap.length == k) {
        maxScore = max(maxScore, sum * n2);
      }
    }

    return maxScore;
  }
}
