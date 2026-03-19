import 'package:leetcode_dart/common/tree_node.dart';

class MaximumLevelSumOfABinaryTree {
  int maxLevelSum(TreeNode? root) {
    if (root == null) {
      return 0;
    }

    final queue = [root];
    var front = 0;

    int? maxSum;
    var maxLevel = 1;
    var level = 1;

    while (front < queue.length) {
      final levelSize = queue.length - front;
      var sum = 0;

      for (var i = 0; i < levelSize; i++) {
        final node = queue[front++];
        sum += node.val;

        if (node.left != null) {
          queue.add(node.left!);
        }

        if (node.right != null) {
          queue.add(node.right!);
        }
      }

      if (maxSum == null || sum > maxSum) {
        maxSum = sum;
        maxLevel = level;
      }

      level++;
    }

    return maxLevel;
  }
}
