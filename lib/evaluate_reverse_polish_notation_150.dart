class EvaluateReversePolishNotation150 {
  int evalRPN(List<String> tokens) {
    final stack = <int>[];
    for (final token in tokens) {
      if (token == '+') {
        stack.add(stack.removeLast() + stack.removeLast());
      } else if (token == '-') {
        final last = stack.removeLast();
        stack.add(stack.removeLast() - last);
      } else if (token == '*') {
        stack.add(stack.removeLast() * stack.removeLast());
      } else if (token == '/') {
        final last = stack.removeLast();
        stack.add(stack.removeLast() ~/ last);
      } else {
        stack.add(int.parse(token));
      }
    }
    return stack.removeLast();
  }
}