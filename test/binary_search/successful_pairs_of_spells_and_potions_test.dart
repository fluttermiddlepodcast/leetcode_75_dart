import 'package:leetcode_dart/binary_search/successful_pairs_of_spells_and_potions.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = SuccessfulPairsOfSpellsAndPotions();

      test(
        'Example 1',
        () => expect(
          [4, 0, 3],
          equals(
            solution.successfulPairs(
              [5, 1, 3],
              [1, 2, 3, 4, 5],
              7,
            ),
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          [2, 0, 2],
          equals(
            solution.successfulPairs(
              [3, 1, 2],
              [8, 5, 8],
              16,
            ),
          ),
        ),
      );
    },
  );
}
