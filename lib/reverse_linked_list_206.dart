class ListNode {
  int val;
  ListNode? next;

  ListNode([this.val = 0, this.next]);
}

class ReverseLinkedList206 {
  ListNode? reverseList(ListNode? head) {
    ListNode? prev;
    ListNode? curr = head;
    while (curr != null) {
      final nextTemp = curr.next;
      curr.next = prev;
      prev = curr;
      curr = nextTemp;
    }
    return prev;
  }

  ListNode? reverseList2(ListNode? head) {
    if (head == null || head.next == null) {
      return head;
    }
    final p = reverseList2(head.next);
    head.next?.next = head;
    head.next = null;
    return p;
  }
}