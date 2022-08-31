class MoveZeroes283 {
  void moveZeroes(List<int> nums) {
    var i = 0;
    var j = 0;
    while (j < nums.length) {
      if (nums[j] != 0) {
        nums[i] = nums[j];
        i++;
      }
      j++;
    }
    while (i < nums.length) {
      nums[i] = 0;
      i++;
    }
  }

  void moveZeroes2(List<int> nums) {
    void swap(int x, int y) {
      final temp = nums[x];
      nums[x] = nums[y];
      nums[y] = temp;
    }

    final len = nums.length;

    if (len < 2) {
      return;
    }

    var p = 0;
    for (var i = 0; i < len; i++) {
      if (nums[i] != 0) {
        swap(p, i);
        p++;
      }
    }
  }
}
