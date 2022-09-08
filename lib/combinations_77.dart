class Combinations77 {
  List<List<int>> combine(int n, int k) {
    List<List<int>> result = [];
    List<int> current = [];
    combineHelper(n, k, 1, current, result);
    return result;
  }

  void combineHelper(
    int n,
    int k,
    int start,
    List<int> current,
    List<List<int>> result,
  ) {
    if (current.length == k) {
      result.add(current.toList());
      return;
    }
    for (int i = start; i <= n; i++) {
      current.add(i);
      combineHelper(n, k, i + 1, current, result);
      current.removeLast();
    }
  }
}
