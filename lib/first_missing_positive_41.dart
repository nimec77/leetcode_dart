class FirstMissingPositive41 {
  int firstMissingPositive(List<int> nums) {
    final n = nums.length;
    final indicators = List<int>.filled(n + 1, 0, growable: false);
    for (var i = 0; i < n; i++) {
      if (nums[i] > 0 && nums[i] <= n) {
        indicators[nums[i]] = 1;
      }
    }
    for (var i = 1; i <= n; i++) {
      if (indicators[i] == 0) {
        return i;
      }
    }

    return n + 1;
  }
}