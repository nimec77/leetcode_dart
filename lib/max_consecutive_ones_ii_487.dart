import 'dart:math' as math;

class MaxConsecutiveOnesIi487 {
  int findMaxConsecutiveOnes(List<int> nums) {
    var max = 0;
    var count = 0;
    var prev = 0;
    for (var i = 0; i < nums.length; i++) {
      if (nums[i] == 1) {
        count++;
      } else {
        prev = count;
        count = 0;
      }
      max = math.max(max, prev + count + 1);
    }
    return max;
  }
}