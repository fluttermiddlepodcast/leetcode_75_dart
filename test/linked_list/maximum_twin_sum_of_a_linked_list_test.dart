import 'package:leetcode_dart/linked_list/maximum_twin_sum_of_a_linked_list.dart';
import 'package:test/test.dart';

import '../common/linked_list.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = MaximumTwinSumOfALinkedList();

      test(
        'Example 1',
        () => expect(
          6,
          solution.pairSum(
            linkedListFromList(
              [5, 4, 2, 1],
            ),
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          7,
          solution.pairSum(
            linkedListFromList(
              [4, 2, 2, 3],
            ),
          ),
        ),
      );

      test(
        'Example 3',
        () => expect(
          100001,
          solution.pairSum(
            linkedListFromList(
              [1, 100000],
            ),
          ),
        ),
      );
    },
  );
}
