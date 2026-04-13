class SuccessfulPairsOfSpellsAndPotions {
  List<int> successfulPairs(List<int> spells, List<int> potions, int success) {
    potions.sort();

    final length = potions.length;
    final result = <int>[];

    for (final spell in spells) {
      final min = (success + spell - 1) ~/ spell;

      var left = 0;
      var right = length;

      while (left < right) {
        final middle = (left + right) ~/ 2;

        if (potions[middle] < min) {
          left = middle + 1;
        } else {
          right = middle;
        }
      }

      result.add(length - left);
    }

    return result;
  }
}
