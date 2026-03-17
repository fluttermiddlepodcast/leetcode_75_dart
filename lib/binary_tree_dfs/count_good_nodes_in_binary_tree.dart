import 'dart:math';

import 'package:leetcode_dart/common/tree_node.dart';

// https://leetcode.com/problems/count-good-nodes-in-binary-tree/
class CountGoodNodesInBinaryTree {
  int goodNodes(TreeNode root) {
    return dfs(root, root.val);
  }

  int dfs(TreeNode? node, int current) {
    if (node != null) {
      var left = dfs(node.left, max(node.val, current));
      var right = dfs(node.right, max(node.val, current));

      return (node.val >= current ? 1 : 0) + left + right;
    }

    return 0;
  }
}
