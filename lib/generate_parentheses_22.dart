class GenerateParentheses22 {
  List<String> generateParenthesis(int n) {
    final result = <String>[];
    _generateParenthesis(result, '', 0, 0, n);
    return result;
  }

  void _generateParenthesis(
    List<String> result,
    String s,
    int open,
    int close,
    int max,
  ) {
    if (s.length == max * 2) {
      result.add(s);
      return;
    }
    if (open < max) {
      _generateParenthesis(result, '$s(', open + 1, close, max);
    }
    if (close < open) {
      _generateParenthesis(result, '$s)', open, close + 1, max);
    }
  }
}
