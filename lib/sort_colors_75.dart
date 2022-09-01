class SortColors75 {
  void sortColors(List<int> nums) {
    var left = 0;
    var right = nums.length - 1;
    var i = 0;
    while (i <= right) {
      if (nums[i] == 0) {
        nums.swap(i, left);
        left++;
        i++;
      } else if (nums[i] == 2) {
        nums.swap(i, right);
        right--;
      } else {
        i++;
      }
    }
  }
}

extension Swap on List<int> {
  void swap(int i, int j) {
    final temp = this[i];
    this[i] = this[j];
    this[j] = temp;
  }
}