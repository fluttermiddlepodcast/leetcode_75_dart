import 'package:leetcode_dart/linked_list/reverse_linked_list.dart';
import 'package:test/test.dart';

import '../common/linked_list.dart';

void main() {
  group(
    'Example tests',
    () {
      final solution = ReverseLinkedList();

      test(
        '[5, 4, 3, 2, 1]',
        () => expect(
          true,
          compareLinkedLists(
            linkedListFromList(
              [5, 4, 3, 2, 1],
            ),
            solution.reverseList(
              linkedListFromList(
                [1, 2, 3, 4, 5],
              ),
            ),
          ),
        ),
      );

      test(
        '[2, 1]',
        () => expect(
          true,
          compareLinkedLists(
            linkedListFromList(
              [2, 1],
            ),
            solution.reverseList(
              linkedListFromList(
                [1, 2],
              ),
            ),
          ),
        ),
      );

      test(
        '',
        () => expect(
          true,
          compareLinkedLists(
            null,
            solution.reverseList(null),
          ),
        ),
      );
    },
  );
}
