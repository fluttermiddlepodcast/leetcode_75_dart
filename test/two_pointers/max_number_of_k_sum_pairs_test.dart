import 'package:leetcode_dart/two_pointers/max_number_of_k_sum_pairs.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = MaxNumberOfKSumPairs();

      test(
        '2',
        () => expect(
          2,
          solution.countPairs(
            [1, 2, 3, 4],
            5,
          ),
        ),
      );

      test(
        '1',
        () => expect(
          1,
          solution.countPairs(
            [3, 1, 3, 4, 3],
            6,
          ),
        ),
      );
    },
  );
}
