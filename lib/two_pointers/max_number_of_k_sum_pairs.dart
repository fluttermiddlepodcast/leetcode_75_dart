class MaxNumberOfKSumPairs {
  int countPairs(List<int> nums, int k) {
    final count = <int, int>{};
    var result = 0;

    for (final num in nums) {
      final s = k - num;
      final sCount = count[s] ?? 0;

      if (sCount > 0) {
        result++;
        count[s] = sCount - 1;
      } else {
        count[num] = (count[num] ?? 0) + 1;
      }
    }

    return result;
  }
}
