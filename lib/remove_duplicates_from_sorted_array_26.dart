class RemoveDuplicatesFromSortedArray26 {
  static int removeDuplicated(List<int> nums) {
    if (nums.isEmpty) {
      return 0;
    }
    var i = 1;
    for (var j = 1; j < nums.length; j++) {
      if (nums[j] == nums[i - 1]) {
        nums[j] = 0;
        continue;
      } else if (j != i) {
        nums[i] = nums[j];
        nums[j] = 0;
      }
      i++;
    }
    return i;
  }
}