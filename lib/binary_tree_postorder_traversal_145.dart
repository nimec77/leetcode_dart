class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode([this.val = 0, this.left, this.right]);
}

class BinaryTreePostorderTraversal145 {
  List<int> postorderTraversal(TreeNode? root) {
    final result = <int>[];
    final stack = <TreeNode>[];
    TreeNode? prev;
    while (root != null || stack.isNotEmpty) {
      while (root != null) {
        stack.add(root);
        root = root.left;
      }
      root = stack.last;
      if (root.right == null || root.right == prev) {
        result.add(root.val);
        stack.removeLast();
        prev = root;
        root = null;
      } else {
        root = root.right;
      }
    }
    return result;
  }

  List<int> postorderTraversal2(TreeNode? root) {
    final result = <int>[];
    void helper(TreeNode? node) {
      if (node == null) {
        return;
      }
      if (node.left != null) {
        helper(node.left);
      }
      if (node.right != null) {
        helper(node.right);
      }
      result.add(node.val);
    }

    helper(root);
    return result;
  }
}