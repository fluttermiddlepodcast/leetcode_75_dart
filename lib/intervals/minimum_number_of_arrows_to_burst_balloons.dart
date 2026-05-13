// https://leetcode.com/problems/minimum-number-of-arrows-to-burst-balloons/
class MinimumNumberOfArrowsToBurstBalloons {
  int findMinArrowShots(List<List<int>> points) {
    if (points.isEmpty) {
      return 0;
    }

    points.sort((a, b) => a[1].compareTo(b[1]));

    var arrows = 1;
    var end = points[0][1];

    for (var i = 1; i < points.length; i++) {
      if (points[i][0] > end) {
        arrows++;
        end = points[i][1];
      }
    }

    return arrows;
  }
}
