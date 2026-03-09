import 'package:leetcode_dart/common/list_node.dart';

ListNode linkedListFromList(List<int> list) {
  final head = ListNode(list.first);
  var p = head;
  for (int i = 1; i < list.length; i++) {
    p.next = ListNode(list[i]);
    p = p.next!;
  }

  return head;
}

bool compareLinkedLists(ListNode? first, ListNode? second) {
  while (first != null && second != null) {
    if (first.val != second.val) {
      return false;
    }

    first = first.next;
    second = second.next;
  }

  return first == null && second == null;
}
