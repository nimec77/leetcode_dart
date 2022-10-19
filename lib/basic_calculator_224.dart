class BasicCalculator224 {
  int calculate(String s) {
    var stack = <int>[];
    var sign = 1;
    var result = 0;
    var i = 0;
    while (i < s.length) {
      if (s[i] == ' ') {
        i++;
      } else if (s[i] == '+') {
        sign = 1;
        i++;
      } else if (s[i] == '-') {
        sign = -1;
        i++;
      } else if (s[i] == '(') {
        stack.add(result);
        stack.add(sign);
        result = 0;
        sign = 1;
        i++;
      } else if (s[i] == ')') {
        result = result * stack.removeLast() + stack.removeLast();
        i++;
      } else {
        var num = 0;
        while (i < s.length &&
            s[i].codeUnitAt(0) >= '0'.codeUnitAt(0) &&
            s[i].codeUnitAt(0) <= '9'.codeUnitAt(0)) {
          num = num * 10 + s[i].codeUnitAt(0) - '0'.codeUnitAt(0);
          i++;
        }
        result += sign * num;
      }
    }
    return result;
  }
}
