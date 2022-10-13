import 'dart:collection';

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode([this.val = 0, this.left, this.right]);
}

class BinaryTreeLevelOrderTraversal102 {
  List<List<int>> levelOrder(TreeNode? root) {
    if (root == null) {
      return [];
    }
    final result = <List<int>>[];
    final queue = DoubleLinkedQueue<TreeNode>();
    queue.add(root);
    while (queue.isNotEmpty) {
      final level = <int>[];
      final size = queue.length;
      for (var i = 0; i < size; i++) {
        final node = queue.removeFirst();
        level.add(node.val);
        if (node.left != null) {
          queue.add(node.left!);
        }
        if (node.right != null) {
          queue.add(node.right!);
        }
      }
      result.add(level);
    }
    return result;
  }

  List<List<int>> levelOrder2(TreeNode? root) {
    Iterable<List<int>> traversal() sync* {
      var queue = <TreeNode>[if (root != null) root];
      for (var length = queue.length; length != 0; length = queue.length) {
        yield List<int>.generate(length, (i) => queue[i].val);
        queue = queue
            .expand<TreeNode?>((e) => [e.left, e.right])
            .whereType<TreeNode>()
            .toList(growable: false);
      }
    }

    return traversal().toList();
  }
}
