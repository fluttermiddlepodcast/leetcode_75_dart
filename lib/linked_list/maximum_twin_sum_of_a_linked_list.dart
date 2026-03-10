import 'package:leetcode_dart/common/list_node.dart';

class MaximumTwinSumOfALinkedList {
  int pairSum(ListNode? head) {
    ListNode? slow = head;
    ListNode? fast = head;
    while (fast != null && fast.next != null) {
      slow = slow!.next;
      fast = fast.next!.next;
    }

    ListNode? prev;
    ListNode? curr = slow;
    while (curr != null) {
      var nextTemp = curr.next;
      curr.next = prev;
      prev = curr;
      curr = nextTemp;
    }

    ListNode? first = head;
    ListNode? second = prev;
    var maxSum = 0;
    while (second != null) {
      var sum = first!.val + second.val;
      if (sum > maxSum) {
        maxSum = sum;
      }

      first = first.next;
      second = second.next;
    }

    return maxSum;
  }
}
