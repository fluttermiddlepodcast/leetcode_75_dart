import 'package:leetcode_dart/bit_manipulation/minimum_flips_to_make_a_or_b_equal_to_c.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = MinimumFlipsToMakeAORBEqualToC();

      test(
        'Example 1',
        () => expect(
          1,
          solution.minFlips(
            4,
            2,
            7,
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          0,
          solution.minFlips(
            1,
            2,
            3,
          ),
        ),
      );
    },
  );
}
