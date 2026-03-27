import 'package:leetcode_dart/linked_list/odd_even_linked_list.dart';
import 'package:test/test.dart';

import '../common/linked_list.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = OddEvenLinkedList();

      test(
        'Example 1',
        () => expect(
          true,
          compareLinkedLists(
            linkedListFromList(
              [1, 3, 5, 2, 4],
            ),
            solution.oddEvenList(
              linkedListFromList(
                [1, 2, 3, 4, 5],
              ),
            ),
          ),
        ),
      );

      test(
        'Example 2',
        () => expect(
          true,
          compareLinkedLists(
            linkedListFromList(
              [2, 3, 6, 7, 1, 5, 4],
            ),
            solution.oddEvenList(
              linkedListFromList(
                [2, 1, 3, 5, 6, 4, 7],
              ),
            ),
          ),
        ),
      );
    },
  );
}
