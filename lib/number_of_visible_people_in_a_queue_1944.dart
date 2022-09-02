class NumberOfVisiblePeopleInAQueue1944 {
  List<int> canSeePersonsCount(List<int> heights) {
    final n = heights.length;
    final ans = List<int>.filled(n, 0, growable: false);
    final stack = <int>[];
    for (var i = 0; i < n; i++) {
      while (stack.isNotEmpty && heights[stack.last] <= heights[i]) {
        ++ans[stack.removeLast()];
      }
      if (stack.isNotEmpty) {
        ++ans[stack.last];
      }
      stack.add(i);
    }
    return ans;
  }
}