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
  bool isSameTree(TreeNode? p, TreeNode? q) {
    if (p == null && q == null) {
      return true; // Both trees are empty, hence they are equal
    }
    if (p == null || q == null) {
      return false; // One tree is empty while the other is not, hence they are not equal
    }
    if (p!.val != q!.val) {
      return false; // Values at current nodes are not equal
    }
    // Recursively check left and right subtrees
    return isSameTree(p.left, q.left) && isSameTree(p.right, q.right);
  }
}