// https://leetcode.com/problems/unique-paths/
class UniquePaths {
  int uniquePaths(int m, int n) {
    if (m == 1 || n == 1) {
      return 1;
    }

    final dp = List<int>.filled(n, 1);

    for (var i = 1; i < m; i++) {
      for (var j = 1; j < n; j++) {
        dp[j] = dp[j] + dp[j - 1];
      }
    }

    return dp[n - 1];
  }
}
