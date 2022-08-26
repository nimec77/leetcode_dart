class SquaresOfASortedArray977 {
  static List<int> sortedSquares(List<int> nums) {
    final result = List<int>.filled(nums.length, 0, growable: false);
    var left = 0, right = nums.length - 1;
    for (var i = right; i >= 0; i--) {
      int n;
      if (nums[left].abs() > nums[right].abs()) {
        n = nums[left];
        left++;
      } else {
        n = nums[right];
        right--;
      }
      result[i] = n * n;
    }

    return result;
  }
}