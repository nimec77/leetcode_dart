import 'dart:math' as math;

class MinimumSizeSubarraySum209 {
  int minSubArrayLent(int target, List<int> nums) {
    final n = nums.length;
    var i = 0;
    var sum = 0;
    var min = n + 1;
    for (var j = 0; j < n; j++) {
      sum += nums[j];
      while (sum >= target) {
        min = math.min(min, j - i + 1);
        sum -= nums[i];
        i++;
      }
    }
    return min == n + 1 ? 0 : min;
  }
}
