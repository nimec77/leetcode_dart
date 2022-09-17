class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode([this.val = 0, this.left, this.right]);
}

class BinaryTreeInorderTraversal94 {
  List<int> inorderTraversal(TreeNode root) {
    final result = <int>[];
    final stack = <TreeNode>[];
    TreeNode? current = root;
    while (current != null || stack.isNotEmpty) {
      while (current != null) {
        stack.add(current);
        current = current.left;
      }
      current = stack.removeLast();
      result.add(current.val);
      current = current.right;
    }
    return result;
  }

  List<int> inorderTraversal2(TreeNode? root) {
    final result = <int>[];
    void helper(TreeNode? node) {
      if (node == null) {
        return;
      }
      if (node.left != null) {
        helper(node.left);
      }
      result.add(node.val);
      if (node.right != null) {
        helper(node.right);
      }
    }
    helper(root);
    return result;
  }
}