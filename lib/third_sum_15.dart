class ThreeSum15 {
  List<List<int>> threeSum(List<int> nums) {
    List<List<int>> result = [];
    if (nums.length < 3) {
      return result;
    }
    nums.sort();
    for (var i = 0; i < nums.length - 2; i++) {
      if (i > 0 && nums[i] == nums[i - 1]) {
        continue;
      }
      var left = i + 1;
      var right = nums.length - 1;
      while (left < right) {
        var sum = nums[i] + nums[left] + nums[right];
        if (sum == 0) {
          result.add([nums[i], nums[left], nums[right]]);
          while (left < right && nums[left] == nums[left + 1]) {
            left++;
          }
          while (left < right && nums[right] == nums[right - 1]) {
            right--;
          }
          left++;
          right--;
        } else if (sum < 0) {
          left++;
        } else {
          right--;
        }
      }
    }
    return result;
  }
}