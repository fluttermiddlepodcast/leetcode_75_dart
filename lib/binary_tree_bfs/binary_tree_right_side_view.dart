import 'package:leetcode_dart/common/tree_node.dart';

class BinaryTreeRightSideView {
  List<int> rightSideView(TreeNode? root) {
    if (root == null) {
      return [];
    }

    final result = <int>[];
    final queue = <TreeNode>[];
    var front = 0;

    queue.add(root);

    while (front < queue.length) {
      final levelSize = queue.length - front;

      for (var i = 0; i < levelSize; i++) {
        final node = queue[front++];

        if (node.left != null) {
          queue.add(node.left!);
        }

        if (node.right != null) {
          queue.add(node.right!);
        }

        if (i == levelSize - 1) {
          result.add(node.val);
        }
      }
    }

    return result;
  }
}
