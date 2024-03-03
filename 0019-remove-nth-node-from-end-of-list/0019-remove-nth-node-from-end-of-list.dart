/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */

class Solution {
  ListNode? removeNthFromEnd(ListNode? head, int n) {
    // Create two pointers: fast and slow
    ListNode? fast = head;
    ListNode? slow = head;
    
    // Move the fast pointer n steps ahead
    for (int i = 0; i < n; i++) {
      if (fast == null) return head; // The list does not have n nodes
      fast = fast.next;
    }
    
    // If fast becomes null, it means we need to remove the head node
    if (fast == null) {
      return head?.next;
    }
    
    // Move both pointers until fast reaches the end
    while (fast?.next != null) {
      fast = fast?.next;
      slow = slow?.next;
    }
    
    // Remove the nth node by skipping it
    slow?.next = slow?.next?.next;
    
    return head;
  }
}