// https://leetcode.com/problems/non-overlapping-intervals/
class NonOverlappingIntervals {
  int eraseOverlapIntervals(List<List<int>> intervals) {
    if (intervals.isEmpty) {
      return 0;
    }

    intervals.sort((a, b) => a[1].compareTo(b[1]));

    var nonOverlap = 1;
    var end = intervals[0][1];

    for (var i = 1; i < intervals.length; i++) {
      if (intervals[i][0] >= end) {
        nonOverlap++;
        end = intervals[i][1];
      }
    }

    return intervals.length - nonOverlap;
  }
}
