class ListNode {
  int val;
  ListNode? next;

  ListNode([this.val = 0, this.next]);
}

class LinkedListCycle141 {
  bool hasCycle(ListNode? head) {
    if (head == null) {
      return false;
    }
    ListNode? slow = head;
    var fast = head.next;
    while (fast != null && fast.next != null) {
      if (slow == fast) {
        return true;
      }
      slow = slow?.next;
      fast = fast.next?.next;
    }
    return false;
  }
}