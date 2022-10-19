class BasicCalculatorIi227 {
  int calculate(String s) {
    var stack = <int>[];
    var num = 0;
    var sign = '+';
    for (var i = 0; i < s.length; i++) {
      if (s[i].isDigit) {
        num = num * 10 + int.parse(s[i]);
      }
      if (!s[i].isDigit && s[i] != ' ' || i == s.length - 1) {
        if (sign == '+') {
          stack.add(num);
        } else if (sign == '-') {
          stack.add(-num);
        } else if (sign == '*') {
          stack.add(stack.removeLast() * num);
        } else if (sign == '/') {
          stack.add(stack.removeLast() ~/ num);
        }
        sign = s[i];
        num = 0;
      }
    }
    return stack.reduce((a, b) => a + b);
  }
}

extension on String {
  bool get isDigit =>
      codeUnitAt(0) >= '0'.codeUnitAt(0) && codeUnitAt(0) <= '9'.codeUnitAt(0);
}
