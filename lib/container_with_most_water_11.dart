import 'dart:math' as math;

class ContainerWithMostWater11 {
  int maxArea(List<int> height) {
    var max = 0;
    var left = 0;
    var right = height.length - 1;
    while (left < right) {
      final side = math.min(height[left], height[right]);
      max = math.max(side * (right - left), max);
      if (height[left] < height[right]) {
        left++;
      } else {
        right--;
      }
    }

    return max;
  }
}
