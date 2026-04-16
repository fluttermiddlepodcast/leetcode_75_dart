// https://leetcode.com/problems/koko-eating-bananas/
import 'dart:math';

class KokoEatingBananas {
  int minEatingSpeed(List<int> piles, int h) {
    var left = 1;
    var right = piles.reduce(max);

    while (left < right) {
      final middle = left + (right - left) ~/ 2;
      final hours = piles.fold(
        0,
        (sum, bananas) => sum + (bananas + middle - 1) ~/ middle,
      );

      if (hours > h) {
        left = middle + 1;
      } else {
        right = middle;
      }
    }

    return left;
  }
}
