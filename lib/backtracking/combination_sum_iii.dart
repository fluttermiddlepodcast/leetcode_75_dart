class CombinationSumIII {
  List<List<int>> combinationSum3(int k, int n) {
    final result = <List<int>>[];

    void backtrack(int start, List<int> curr, int sum) {
      if (curr.length == k && sum == n) {
        result.add(List.from(curr));
      } else {
        for (var i = start; i <= 9; i++) {
          if (sum + i > n) {
            break;
          }

          curr.add(i);
          backtrack(i + 1, curr, sum + i);
          curr.removeLast();
        }
      }
    }

    backtrack(1, [], 0);

    return result;
  }
}
