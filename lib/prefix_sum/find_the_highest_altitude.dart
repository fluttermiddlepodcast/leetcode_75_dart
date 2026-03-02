import 'dart:math';

class FindTheHighestAltitude {
  int largestAltitude(List<int> gain) {
    var high = gain[0];
    var curr = high;

    for (var i = 1; i < gain.length; i++) {
      curr += gain[i];

      if (curr > high) {
        high = curr;
      }
    }

    return max(0, high);
  }
}
