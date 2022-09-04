class SearchInRotatedSortedArray33 {
  int search(List<int> nums, int target) {
    var left = 0;
    var right = nums.length - 1;
    while (left <= right) {
      final mid = left + (right - left) ~/ 2;
      if (nums[mid] == target) {
        return mid;
      }
      if (nums[left] <= nums[mid]) {
        if (nums[left] <= target && target < nums[mid]) {
          right = mid - 1;
        } else {
          left = mid + 1;
        }
      } else {
        if (nums[mid] < target && target <= nums[right]) {
          left = mid + 1;
        } else {
          right = mid - 1;
        }
      }
    }
    return -1;
  }
}