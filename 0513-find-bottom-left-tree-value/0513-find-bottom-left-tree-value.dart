import 'dart:collection';

/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */

class Solution {
  int findBottomLeftValue(TreeNode? root) {
    if (root == null) return -1; // Return -1 for an empty tree

    Queue<TreeNode?> queue = Queue();
    queue.add(root);
    int leftmostValue = root.val;

    while (queue.isNotEmpty) {
      int levelSize = queue.length;
      leftmostValue = queue.first!.val;

      for (int i = 0; i < levelSize; i++) {
        TreeNode? currentNode = queue.removeFirst();
        if (currentNode!.left != null) queue.add(currentNode.left);
        if (currentNode.right != null) queue.add(currentNode.right);
      }
    }

    return leftmostValue;
  }
}