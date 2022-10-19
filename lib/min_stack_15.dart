class MinStack {

  final stack = <int>[];
  final minStack = <int>[];

  void push(int val) {
    stack.add(val);
    if (minStack.isEmpty || val <= minStack.last) {
      minStack.add(val);
    }
  }

  void pop() {
    final val = stack.removeLast();
    if (val == minStack.last) {
      minStack.removeLast();
    }
  }

  int top() {
    return stack.last;
  }

  int getMin() {
    return minStack.last;
  }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * MinStack obj = MinStack();
 * obj.push(val);
 * obj.pop();
 * int param3 = obj.top();
 * int param4 = obj.getMin();
 */