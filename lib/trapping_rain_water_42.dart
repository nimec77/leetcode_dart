class TrappingRainWater42 {
  int trap(List<int> height) {
    if (height.isEmpty) {
      return 0;
    }
    var left = 0;
    var right = height.length - 1;
    var leftMax = 0;
    var rightMax = 0;
    var result = 0;
    while (left < right) {
      if (height[left] < height[right]) {
        if (height[left] >= leftMax) {
          leftMax = height[left];
        } else {
          result += leftMax - height[left];
        }
        left++;
      } else {
        if (height[right] >= rightMax) {
          rightMax = height[right];
        } else {
          result += rightMax - height[right];
        }
        right--;
      }
    }
    return result;
  }
}