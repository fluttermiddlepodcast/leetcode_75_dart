import 'package:leetcode_dart/common/tree_node.dart';

class MaximumDepthOfBinaryTree {
  int maxDepth(TreeNode? root) {
    if (root != null) {
      var left = maxDepth(root.left);
      var right = maxDepth(root.right);

      return left > right ? left + 1 : right + 1;
    }

    return 0;
  }
}
