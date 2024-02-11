/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    // Create a dummy node to serve as the head of the merged list
    ListNode dummy = ListNode();
    // Create a pointer to traverse the merged list
    ListNode? current = dummy;

    // Iterate through both lists while they are not empty
    while (list1 != null && list2 != null) {
      // Compare the values of the current nodes in both lists
      // Append the smaller node to the merged list
      if (list1.val < list2.val) {
        current!.next = list1;
        list1 = list1.next;
      } else {
        current!.next = list2;
        list2 = list2.next;
      }
      // Move the pointer forward in the merged list
      current = current.next;
    }

    // If any of the lists is not fully traversed, append the remaining nodes to the merged list
    if (list1 != null) {
      current!.next = list1;
    } else {
      current!.next = list2;
    }

    // Return the head of the merged list (excluding the dummy node)
    return dummy.next;
  }
}