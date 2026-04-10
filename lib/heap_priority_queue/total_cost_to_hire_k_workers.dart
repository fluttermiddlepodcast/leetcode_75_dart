import 'package:collection/collection.dart';

// https://leetcode.com/problems/total-cost-to-hire-k-workers/
class TotalCostToHireKWorkers {
  int totalCost(List<int> costs, int k, int candidates) {
    comparator(List<int> a, List<int> b) => a[0] != b[0] ? a[0].compareTo(b[0]) : a[1].compareTo(b[1]);

    final leftQueue = PriorityQueue<List<int>>(comparator);
    final rightQueue = PriorityQueue<List<int>>(comparator);

    var left = 0;
    var right = costs.length - 1;

    for (var i = 0; i < candidates && left <= right; i++) {
      leftQueue.add([costs[left], left++]);
    }

    for (var i = 0; i < candidates && left <= right; i++) {
      rightQueue.add([costs[right], right--]);
    }

    var total = 0;

    for (var i = 0; i < k; i++) {
      var pickFromLeft = false;

      if (leftQueue.isEmpty) {
        pickFromLeft = false;
      } else if (rightQueue.isEmpty) {
        pickFromLeft = true;
      } else {
        final leftTop = leftQueue.first;
        final rightTop = rightQueue.first;

        if (leftTop[0] < rightTop[0]) {
          pickFromLeft = true;
        } else if (leftTop[0] > rightTop[0]) {
          pickFromLeft = false;
        } else {
          pickFromLeft = leftTop[1] < rightTop[1];
        }
      }

      if (pickFromLeft) {
        final chosen = leftQueue.removeFirst();
        total += chosen[0];

        if (left <= right) {
          leftQueue.add([costs[left], left]);
          left++;
        }
      } else {
        final chosen = rightQueue.removeFirst();
        total += chosen[0];

        if (left <= right) {
          rightQueue.add([costs[right], right]);
          right--;
        }
      }
    }

    return total;
  }
}
