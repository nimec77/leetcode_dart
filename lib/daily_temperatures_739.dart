class DailyTemperatures739 {
  List<int> dailyTemperatures(List<int> temperatures) {
    final n = temperatures.length;
    var result = List<int>.filled(n, 0, growable: false);
    for (var i = n - 1; i >= 0; i--) {
      for (var j = i + 1; j < n; j++) {
        if (temperatures[j] > temperatures[i]) {
          result[i] = j - i;
          break;
        }
      }
    }
    return result;
  }

  List<int> dailyTemperatures2(List<int> temperatures) {
    final n = temperatures.length;
    final result = List<int>.filled(n, 0, growable: false);
    final stack = <int>[];
    for (var i = 0; i < n; i++) {
      while (stack.isNotEmpty && temperatures[i] > temperatures[stack.last]) {
        result[stack.last] = i - stack.last;
        stack.removeLast();
      }
      stack.add(i);
    }
    return result;
  }
}