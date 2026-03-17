import 'package:leetcode_dart/common/tree_node.dart';

// https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-tree/
class LowestCommonAncestorOfABinaryTree {
  TreeNode? lowestCommonAncestor(TreeNode? root, TreeNode? p, TreeNode? q) {
    TreeNode? result;

    bool recurseTree(TreeNode? curr, TreeNode? p, TreeNode? q) {
      if (curr == null) {
        return false;
      }

      var left = recurseTree(curr.left, p, q) ? 1 : 0;
      var right = recurseTree(curr.right, p, q) ? 1 : 0;
      var mid = (curr == p || curr == q) ? 1 : 0;

      if (left + right + mid >= 2) {
        result = curr;
      }

      return left + right + mid > 0;
    }

    recurseTree(root, p, q);

    return result;
  }
}
