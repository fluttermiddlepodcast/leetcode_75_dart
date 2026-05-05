// https://leetcode.com/problems/counting-bits/
class CountingBits {
  List<int> countBits(int n) {
    final result = List<int>.filled(n + 1, 0);

    for (var i = 1; i <= n; i++) {
      result[i] = result[i >> 1] + (i & 1);
    }

    return result;
  }
}
