import 'package:leetcode_dart/common/tree_node.dart';

class LeafSimilarTrees {
  bool leafSimilar(TreeNode? root1, TreeNode? root2) {
    final root1Leafs = <int>[];
    _fillLeafs(root1, root1Leafs);

    final root2Leafs = <int>[];
    _fillLeafs(root2, root2Leafs);

    if (root1Leafs.length != root2Leafs.length) {
      return false;
    }

    for (var i = 0; i < root1Leafs.length; i++) {
      if (root1Leafs[i] != root2Leafs[i]) {
        return false;
      }
    }

    return true;
  }

  void _fillLeafs(TreeNode? root, List<int> leafs) {
    if (root == null) {
      return;
    }

    _fillLeafs(root.left, leafs);

    if (root.left == null && root.right == null) {
      leafs.add(root.val);
    }

    _fillLeafs(root.right, leafs);
  }
}
