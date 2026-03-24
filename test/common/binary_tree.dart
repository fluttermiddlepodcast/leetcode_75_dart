import 'dart:collection';

import 'package:leetcode_dart/common/tree_node.dart';

TreeNode binaryTreeFromList(List<int?> values) {
  final root = TreeNode(values[0] as int);
  final queue = Queue<TreeNode?>();
  queue.add(root);

  var i = 1;

  while (queue.isNotEmpty && i < values.length) {
    final node = queue.removeFirst();

    if (i < values.length) {
      final val = values[i];
      if (val != null) {
        final left = TreeNode(val);
        node!.left = left;
        queue.add(left);
      }

      i++;
    }

    if (i < values.length) {
      final val = values[i];
      if (val != null) {
        final right = TreeNode(val);
        node!.right = right;
        queue.add(right);
      }

      i++;
    }
  }

  return root;
}

bool compareBinaryTrees(TreeNode? first, TreeNode? second) {
  if (first != null && second != null) {
    if (first.val != second.val) {
      return false;
    }

    return compareBinaryTrees(first.left, second.left) && compareBinaryTrees(first.right, second.right);
  }

  return first == null && second == null;
}
