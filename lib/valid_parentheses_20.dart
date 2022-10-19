class ValidParentheses20 {
  bool isValid(String s) {
    final stack = <String>[];
    for (var i = 0; i < s.length; i++) {
      final c = s[i];
      if (c == '(' || c == '[' || c == '{') {
        stack.add(c);
      } else {
        if (stack.isEmpty) {
          return false;
        }
        final top = stack.removeLast();
        if (c == ')' && top != '(') {
          return false;
        }
        if (c == ']' && top != '[') {
          return false;
        }
        if (c == '}' && top != '{') {
          return false;
        }
      }
    }
    return stack.isEmpty;
  }
}