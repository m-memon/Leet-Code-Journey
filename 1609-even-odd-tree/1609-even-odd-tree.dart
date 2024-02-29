import 'dart:collection'; // for using Queue
import 'dart:math'; // for mathematical functions and constants

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
  bool isEvenOddTree(TreeNode? root) {
    // 'isEvenLevel' indicates whether the current level is even or odd.
    var isEvenLevel = true;
    // Queue for level order traversal.
    var nodeQueue = [root];

    while (nodeQueue.isNotEmpty) {
      // 'previousValue' holds the previously encountered value in the current level.
      var previousValue = isEvenLevel ? 0 : double.maxFinite.toInt(); // Initialize based on the level.
      // Process all nodes at the current level.
      var levelSize = nodeQueue.length;
      for (var i = 0; i < levelSize; i++) {
        var node = nodeQueue.removeAt(0)!; // '!' asserts that 'node' won't be null.
        // Check whether the current node's value is appropriately odd or even.
        if (isEvenLevel && (node.val.isEven || previousValue >= node.val)) return false;
        if (!isEvenLevel && (node.val.isOdd || previousValue <= node.val)) return false;
        
        previousValue = node.val; // Update the 'previousValue'.
        // Add child nodes to the queue for the next level.
        if (node.left != null) nodeQueue.add(node.left!);
        if (node.right != null) nodeQueue.add(node.right!);
      }
      // Toggle the level indicator after finishing each level.
      isEvenLevel = !isEvenLevel;
    }

    return true; // The tree meets the even-odd tree conditions.
  }
}