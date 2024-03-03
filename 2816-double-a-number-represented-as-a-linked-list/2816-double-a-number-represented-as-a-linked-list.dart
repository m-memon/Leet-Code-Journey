/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */

class Solution {
  ListNode? doubleIt(ListNode? head) {
    String tempString = "";
    while (head != null) {
      tempString = "$tempString${head.val}";
      head = head.next;
    }
    print(tempString);
    tempString = "${BigInt.parse(tempString) * BigInt.from(2)}";
    ListNode? result;
    ListNode? current;
    for (int index = 0; index < tempString.length; index++) {
      if (result == null) {
        result = ListNode(int.parse(tempString[index]));
        current = result;
      } else {
        current!.next = ListNode(int.parse(tempString[index]));
        current = current.next;
      }
    }
    return result;
  }
}