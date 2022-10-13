class MyQueue {
  final _stack1 = <int>[];
  final _stack2 = <int>[];

  void push(int x) {
    _stack1.add(x);
  }

  int pop() {
    while (_stack1.isNotEmpty) {
      _stack2.add(_stack1.removeLast());
    }
    final result = _stack2.removeLast();
    while (_stack2.isNotEmpty) {
      _stack1.add(_stack2.removeLast());
    }
    return result;
  }

  int peek() {
    while (_stack1.isNotEmpty) {
      _stack2.add(_stack1.removeLast());
    }
    final result = _stack2.last;
    while (_stack2.isNotEmpty) {
      _stack1.add(_stack2.removeLast());
    }
    return result;
  }

  bool empty() {
    return _stack1.isEmpty;
  }
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * MyQueue obj = MyQueue();
 * obj.push(x);
 * int param2 = obj.pop();
 * int param3 = obj.peek();
 * bool param4 = obj.empty();
 */