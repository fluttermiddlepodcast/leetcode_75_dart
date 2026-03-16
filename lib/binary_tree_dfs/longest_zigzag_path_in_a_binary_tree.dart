import 'dart:math';

import 'package:leetcode_dart/common/tree_node.dart';

class LongestZigzagPathInABinaryTree {
  int longestZigZag(TreeNode? root) {
    if (root == null) {
      return 0;
    }

    var maxLength = 0;
    final lengths = <TreeNode, (int, int)>{};
    final stack = <(TreeNode, bool)>[];
    stack.add((root, false));

    while (stack.isNotEmpty) {
      final (node, visited) = stack.removeLast();

      if (!visited) {
        stack.add((node, true));

        if (node.right != null) {
          stack.add((node.right!, false));
        }

        if (node.left != null) {
          stack.add((node.left!, false));
        }
      } else {
        final left = node.left != null ? 1 + lengths[node.left]!.$2 : 0;
        final right = node.right != null ? 1 + lengths[node.right]!.$1 : 0;

        lengths[node] = (left, right);

        maxLength = max(maxLength, max(left, right));
      }
    }

    return maxLength;
  }
}
