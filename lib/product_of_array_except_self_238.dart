class ProductOfArrayExceptSelf238 {
  List<int> productExceptSelf(List<int> nums) {
    final n = nums.length;
    final result = List<int>.filled(n, 1);
    var left = 1;
    for (var i = 0; i < n; i++) {
      result[i] *= left;
      left *= nums[i];
    }
    var right = 1;
    for (var i = n - 1; i >= 0; i--) {
      result[i] *= right;
      right *= nums[i];
    }
    return result;
  }
}