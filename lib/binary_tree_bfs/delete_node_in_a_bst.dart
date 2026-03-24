import 'package:leetcode_dart/common/tree_node.dart';

// https://leetcode.com/problems/delete-node-in-a-bst/
class DeleteNodeInABST {
  TreeNode? deleteNode(TreeNode? root, int key) {
    if (root != null) {
      if (key > root.val) {
        root.right = deleteNode(root.right, key);
      } else if (key < root.val) {
        root.left = deleteNode(root.left, key);
      } else {
        if (root.left == null && root.right == null) {
          root = null;
        } else if (root.right != null) {
          root.val = _successor(root);
          root.right = deleteNode(root.right, root.val);
        } else {
          root.val = _predecessor(root);
          root.left = deleteNode(root.left, root.val);
        }
      }

      return root;
    }

    return null;
  }

  int _successor(TreeNode node) {
    node = node.right!;
    while (node.left != null) {
      node = node.left!;
    }

    return node.val;
  }

  int _predecessor(TreeNode node) {
    node = node.left!;
    while (node.right != null) {
      node = node.right!;
    }

    return node.val;
  }
}
