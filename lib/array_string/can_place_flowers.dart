class CanPlaceFlowers {
  bool canPlaceFlowers(List<int> flowerbed, int n) {
    var count = 0;
    final length = flowerbed.length;

    for (var i = 0; i < length; i++) {
      if (flowerbed[i] == 0) {
        final prev = (i == length - 1) || (flowerbed[i + 1] == 0);
        final next = (i == 0) || (flowerbed[i - 1] == 0);

        if (next && prev) {
          flowerbed[i] = 1;
          count++;

          if (count >= n) {
            return true;
          }

          i++;
        }
      }
    }

    return count >= n;
  }
}
