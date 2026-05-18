// https://leetcode.com/problems/daily-temperatures/
class DailyTemperatures {
  List<int> dailyTemperatures(List<int> temperatures) {
    final n = temperatures.length;
    final result = List<int>.filled(n, 0);
    final stack = [];

    for (var i = 0; i < n; i++) {
      while (stack.isNotEmpty && temperatures[i] > temperatures[stack.last]) {
        final int index = stack.removeLast();
        result[index] = i - index;
      }

      stack.add(i);
    }

    return result;
  }
}
