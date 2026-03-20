import 'package:leetcode_dart/common/tree_node.dart';

// https://leetcode.com/problems/search-in-a-binary-search-tree/
class SearchInABinarySearchTree {
  TreeNode? searchBST(TreeNode? root, int val) {
    if (root == null) {
      return null;
    }

    if (root.val == val) {
      return root;
    }

    final left = searchBST(root.left, val);
    final right = searchBST(root.right, val);

    return left ?? right;
  }
}
