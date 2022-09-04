import 'dart:math' as math;

class MaximumProductSubarray152 {
  int maxProduct(List<int> nums) {
    var max = nums[0];
    var min = nums[0];
    var result = nums[0];
    for (var i = 1; i < nums.length; i++) {
      final temp = max;
      max = max3(max * nums[i], min * nums[i], nums[i]);
      min = min3(temp * nums[i], min * nums[i], nums[i]);
      result = math.max(max, result);
    }

    return result;
  }

  int max3(int a, int b, int c) {
    return math.max(math.max(a, b), c);
  }

  int min3(int a, int b, int c) {
    return math.min(math.min(a, b), c);
  }
}