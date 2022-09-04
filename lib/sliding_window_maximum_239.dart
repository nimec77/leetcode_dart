import 'dart:collection';

class SlidingWindowMaximum239 {
  List<int> maxSlidingWindow(List<int> nums, int k) {
    final result = <int>[];
    final deque = DoubleLinkedQueue<int>();
    for (var i = 0; i < nums.length; i++) {
      while (deque.isNotEmpty && nums[deque.last] < nums[i]) {
        deque.removeLast();
      }
      deque.add(i);
      if (deque.first == i - k) {
        deque.removeFirst();
      }
      if (i >= k - 1) {
        result.add(nums[deque.first]);
      }
    }
    return result;
  }
}