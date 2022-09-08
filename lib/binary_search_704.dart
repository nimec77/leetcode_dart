class BinarySearch704 {
  int search(List<int> nums, int target) {
    var left = 0;
    var right = nums.length - 1;
    while (left <= right) {
      final mid = left + (right - left) ~/ 2;
      if (nums[mid] == target) {
        return mid;
      } else if (nums[mid] < target) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }
    return -1;
  }
}