class RemoveElement {
  int removeElement(List<int> nums, int val) {
    var i = 0, n = nums.length;
    while (i < n) {
      if (nums[i] != val) {
        i++;
        continue;
      }
      nums[i] = nums[n - 1];
      nums[n - 1] = -1;
      n--;
    }
    return n;
  }
}
