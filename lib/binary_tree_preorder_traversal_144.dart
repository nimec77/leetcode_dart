class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode([this.val = 0, this.left, this.right]);
}

class BinaryTreePreorderTraversal144 {
  List<int> preorderTraversal(TreeNode root) {
    final result = <int>[];
    var stack = <TreeNode>[];
    TreeNode? node = root;
    while (node != null || stack.isNotEmpty) {
      while (node != null) {
        result.add(node.val);
        stack.add(node);
        node = node.left;
      }
      node = stack.removeLast();
      node = node.right;
    }
    return result;
  }

  List<int> preorderTraversal2(TreeNode? root) {

    final result = <int>[];

    void helper(TreeNode? node) {
      if(node == null) {
        return;
      }
      result.add(node.val);
      if(node.left != null) {
        helper(node.left);
      }
      if(node.right != null) {
        helper(node.right);
      }
    }

    helper(root);
    return result;

  }
}
