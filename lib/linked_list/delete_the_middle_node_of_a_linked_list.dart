import 'package:leetcode_dart/common/list_node.dart';

// https://leetcode.com/problems/delete-the-middle-node-of-a-linked-list/
class DeleteTheMiddleNodeOfALinkedList {
  ListNode? deleteMiddle(ListNode? head) {
    ListNode? prev;
    var slow = head;
    var fast = head;

    while (fast != null && fast.next != null) {
      prev = slow;
      slow = slow?.next;
      fast = fast.next?.next;
    }

    if (prev == null) {
      return null;
    }

    prev.next = slow?.next;

    return head;
  }
}
