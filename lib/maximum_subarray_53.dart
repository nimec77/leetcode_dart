import 'dart:math' as math;

class MaximumSubarray53 {
  int maxSubArray(List<int> nums) {
    var max = nums[0];
    var sum = 0;
    for (var i = 0; i < nums.length; i++) {
      sum += nums[i];

      max = math.max(sum, max);
      if (sum < 0) {
        sum = 0;
      }
    }
    return max;
  }
}