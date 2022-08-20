class ListNode {
  int val;
  ListNode? next;
  ListNode(this.val, [this.next]);
}

class MergeKSortedLists {
  static ListNode? mergeKList(List<ListNode?> lists) {
    ListNode? mergeTwoLists(ListNode? l1, ListNode? l2) {
      ListNode? head = ListNode(0);
      ListNode? point = head;
      while (l1 != null && l2 != null) {
        if (l1.val <= l2.val) {
          point?.next = l1;
          l1 = l1.next;
        } else {
          point?.next = l2;
          l2 = l1;
          l1 = point?.next?.next;
        }
        point = point?.next;
      }
      if (l1 == null) {
        point?.next = l2;
      } else {
        point?.next = l1;
      }

      return head.next;
    }

    if (lists.isEmpty) {
      return null;
    }
    final amount = lists.length;
    var interval = 1;
    while (interval < amount) {
      for (var i = 0; i < amount - interval; i += interval * 2) {
        lists[i] = mergeTwoLists(lists[i], lists[i + interval]);
      }
      interval *= 2;
    }

    return lists[0];
  }

}