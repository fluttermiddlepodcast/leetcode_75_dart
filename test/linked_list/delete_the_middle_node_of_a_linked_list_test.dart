import 'package:leetcode_dart/linked_list/delete_the_middle_node_of_a_linked_list.dart';
import 'package:test/test.dart';

import '../common/linked_list.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = DeleteTheMiddleNodeOfALinkedList();

      test(
        '[1, 3, 4, 1, 2, 6]',
        () => expect(
          true,
          compareLinkedLists(
            linkedListFromList(
              [1, 3, 4, 1, 2, 6],
            ),
            solution.deleteMiddle(
              linkedListFromList(
                [1, 3, 4, 7, 1, 2, 6],
              ),
            ),
          ),
        ),
      );

      test(
        '[1, 2, 4]',
        () => expect(
          true,
          compareLinkedLists(
            linkedListFromList(
              [1, 2, 4],
            ),
            solution.deleteMiddle(
              linkedListFromList(
                [1, 2, 3, 4],
              ),
            ),
          ),
        ),
      );

      test(
        '[2]',
        () => expect(
          true,
          compareLinkedLists(
            linkedListFromList(
              [2],
            ),
            solution.deleteMiddle(
              linkedListFromList(
                [2, 1],
              ),
            ),
          ),
        ),
      );
    },
  );
}
