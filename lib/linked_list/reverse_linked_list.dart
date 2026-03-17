import 'package:leetcode_dart/common/list_node.dart';

// https://leetcode.com/problems/reverse-linked-list/
class ReverseLinkedList {
  ListNode? reverseList(ListNode? head) {
    ListNode? prev;
    ListNode? curr = head;
    ListNode? next;

    while (curr != null) {
      next = curr.next;
      curr.next = prev;
      prev = curr;
      curr = next;
    }

    return prev;
  }
}
