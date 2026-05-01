import 'dart:math';

// https://leetcode.com/problems/edit-distance/
class EditDistance {
  int minDistance(String word1, String word2) {
    final m = word1.length;
    final n = word2.length;

    final dp = List.generate(m + 1, (_) => List.filled(n + 1, 0));

    for (var i = 0; i <= m; i++) {
      dp[i][0] = i;
    }

    for (var j = 0; j <= n; j++) {
      dp[0][j] = j;
    }

    for (var i = 1; i <= m; i++) {
      for (var j = 1; j <= n; j++) {
        if (word1[i - 1] == word2[j - 1]) {
          dp[i][j] = dp[i - 1][j - 1];
        } else {
          dp[i][j] =
              1 +
              min(
                dp[i - 1][j],
                min(
                  dp[i][j - 1],
                  dp[i - 1][j - 1],
                ),
              );
        }
      }
    }

    return dp[m][n];
  }
}
