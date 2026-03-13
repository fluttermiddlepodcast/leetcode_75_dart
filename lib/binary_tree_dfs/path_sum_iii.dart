import 'package:leetcode_dart/common/tree_node.dart';

class PathSumIII {
  int pathSum(TreeNode? root, int targetSum) {
    if (root == null) {
      return 0;
    }

    return traverse(root, targetSum) + pathSum(root.left, targetSum) + pathSum(root.right, targetSum);
  }

  int traverse(TreeNode? node, int targetSum) {
    if (node == null) {
      return 0;
    }

    var result = 0;

    if (targetSum == node.val) {
      result++;
    }

    result += traverse(node.left, targetSum - node.val) + traverse(node.right, targetSum - node.val);

    return result;
  }
}
