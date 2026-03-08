// https://leetcode.com/problems/unique-number-of-occurrences/
class UniqueNumberOfOccurrences {
  bool uniqueOccurrences(List<int> arr) {
    final freq = <int, int>{};
    for (final num in arr) {
      freq[num] = (freq[num] ?? 0) + 1;
    }

    final seen = <int>{};
    for (final count in freq.values) {
      if (seen.contains(count)) {
        return false;
      }

      seen.add(count);
    }

    return true;
  }
}
