import 'dart:math' as math;

class LargestRectangleInHistogram84 {
  int largestRectangleArea(List<int> heights) {
    var maxArea = 0;
    final stack = <List<int>>[];
    for (var i = 0; i < heights.length; i++) {
      var start = i;
      final h = heights[i];
      while (stack.isNotEmpty &&
          stack.last[0] > h) {
        final item = stack.removeLast();
        final height = item.first;
        final index = item.last;
        final width = i - index;
        maxArea = math.max(maxArea, height * width);
        start = index;
      }
      stack.add([h, start]);
    }
    while(stack.isNotEmpty) {
      final item = stack.removeLast();
      maxArea = math.max(maxArea, item.first * (heights.length - item.last));
    }
    return maxArea;
  }
}
