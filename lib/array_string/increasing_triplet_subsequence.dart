class IncreasingTripletSubsequence {
  bool increasingTriplet(List<int> nums) {
    int? a;
    int? b;

    for (int num in nums) {
      if (a == null || num <= a) {
        a = num;
      } else if (b == null || num <= b) {
        b = num;
      } else {
        return true;
      }
    }

    return false;
  }
}
