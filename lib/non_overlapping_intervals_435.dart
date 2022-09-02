class NonOverlappingIntervals435 {
  int eraseOverlapIntervals(List<List<int>> intervals) {
    if (intervals.isEmpty) {
      return 0;
    }
    intervals.sort((a, b) => a[1] - b[1]);
    var count = 0;
    var j = 0;
    for (var i = 1; i < intervals.length; i++) {
      final nextStartIndex = intervals[i].first;
      final nextEndIndex = intervals[i].last;
      final currentEnd = intervals[j].last;

      if (currentEnd > nextStartIndex) {
        count++;
        if (nextEndIndex < currentEnd) {
          j = i;
        }
      } else {
        j = i;
      }
    }
    return count;
  }
}
