/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    ListNode? sumList = ListNode();
    ListNode? current = sumList;
    
    int carry = 0;
    while (l1 != null || l2 != null || carry != 0) {
      int digit = (l1 != null) ? l1.val : 0;
      int digit0 = (l2 != null) ? l2.val : 0;
      
      int results = digit + digit0 + carry;
      carry = (results / 10).toInt();
      results = (results % 10).toInt();
      current!.next = ListNode(results);
      
      current = current.next;
      l1 = (l1 != null) ? l1.next : null;
      l2 = (l2 != null) ? l2.next : null;
    }
    return sumList.next;
  }
}