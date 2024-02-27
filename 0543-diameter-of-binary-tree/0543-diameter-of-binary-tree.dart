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
  int maxDiameter = 0; // Variable to store the maximum diameter

  int diameterOfBinaryTree(TreeNode? root) {
    if (root == null) return 0; // Base case: empty tree has diameter 0
    
    // Call the recursive function to calculate diameter
    depth(root);
    
    return maxDiameter;
  }
  
  int depth(TreeNode? node) { // Update type to TreeNode?
    if (node == null) return 0; // Base case: leaf node has depth 0
    
    // Recursively calculate the depth of left and right subtrees
    int leftDepth = depth(node.left);
    int rightDepth = depth(node.right);
    
    // Update the maximum diameter encountered so far
    maxDiameter = max(maxDiameter, leftDepth + rightDepth);
    
    // Return the depth of the current subtree
    return 1 + max(leftDepth, rightDepth);
  }
}