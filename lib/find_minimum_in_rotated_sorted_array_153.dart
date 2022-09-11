class FindMinimumInRotatedSortedArray153 {
  int findMin(List<int> nums) {
    var left = 0;
    var right = nums.length - 1;
    while (left < right) {
      var mid = left + (right - left) ~/ 2;
      if (nums[mid] > nums[right]) {
        left = mid + 1;
      } else {
        right = mid;
      }
    }
    return nums[left];
  }
}