// https://leetcode.com/problems/domino-and-tromino-tiling/
class DominoAndTrominoTiling {
  static const mod = 1000000007;

  int numTilings(int n) {
    if (n == 0 || n == 1) {
      return 1;
    }

    final dp = List<int>.filled(n + 1, 0);
    final partial = List<int>.filled(n + 1, 0);

    dp[0] = 1;
    dp[1] = 1;
    partial[0] = 0;
    partial[1] = 0;

    for (var i = 2; i <= n; i++) {
      partial[i] = (partial[i - 1] + dp[i - 2]) % mod;
      dp[i] = (dp[i - 1] + dp[i - 2] + 2 * partial[i - 1]) % mod;
    }

    return dp[n];
  }
}
