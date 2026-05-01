import 'dart:math';

// https://leetcode.com/problems/house-robber/
class HouseRobber {
  int rob(List<int> nums) {
    final length = nums.length;
    final memo = List<int?>.filled(length, null);

    int dfs(int i) {
      if (i >= length) {
        return 0;
      }

      if (memo[i] != null) {
        return memo[i]!;
      }

      memo[i] = max(nums[i] + dfs(i + 2), dfs(i + 1));

      return memo[i]!;
    }

    return dfs(0);
  }
}
