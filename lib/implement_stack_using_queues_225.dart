import 'dart:collection';

class MyStack {
  final queue = Queue<int>();

  MyStack();

  void push(int x) {
    queue.add(x);
    for (var i = 0; i < queue.length - 1; i++) {
      queue.add(queue.removeFirst());
    }
  }

  int pop() {
    return queue.removeFirst();
  }

  int top() {
    return queue.first;
  }

  bool empty() {
    return queue.isEmpty;
  }
}

/**
 * Your MyStack object will be instantiated and called as such:
 * MyStack obj = MyStack();
 * obj.push(x);
 * int param2 = obj.pop();
 * int param3 = obj.top();
 * bool param4 = obj.empty();
 */