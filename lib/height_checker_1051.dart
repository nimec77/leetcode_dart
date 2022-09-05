class HeightChecker1051 {
  int heightChecker(List<int> heights) {
    final sortedHeights = List<int>.from(heights)..sort();
    var count = 0;
    for (var i = 0; i < heights.length; i++) {
      if (heights[i] != sortedHeights[i]) {
        count++;
      }
    }
    return count;
  }
}