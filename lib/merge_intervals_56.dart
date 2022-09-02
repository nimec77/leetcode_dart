import 'dart:math' as math;

class MergeIntervals56 {
  List<List<int>> merge(List<List<int>> intervals) {
    if (intervals.isEmpty) {
      return [];
    }
    intervals.sort((a, b) => a[0] - b[0]);
    final result = <List<int>>[];
    for (final interval in intervals) {
      if (result.isEmpty || result.last[1] < interval[0]) {
        result.add(interval);
      } else {
        result.last[1] = math.max(result.last[1], interval[1]);
      }
    }
    return result;
  }
}