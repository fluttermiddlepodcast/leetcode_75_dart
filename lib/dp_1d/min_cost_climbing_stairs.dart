// https://leetcode.com/problems/min-cost-climbing-stairs/
import 'dart:math';

class MinCostClimbingStairs {
  int minCostClimbingStairs(List<int> cost) {
    final length = cost.length;

    if (length == 2) {
      return min(cost[0], cost[1]);
    }

    final dp = List.filled(length + 1, 0);
    var dpN = dp.length;

    for (var i = 2; i < dpN; i++) {
      dp[i] = min(dp[i - 1] + cost[i - 1], dp[i - 2] + cost[i - 2]);
    }

    return dp[dpN - 1];
  }
}
