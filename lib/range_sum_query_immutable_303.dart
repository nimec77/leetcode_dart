class RangeSumQueryImmutable303 {
  late List<int> nums;
  final sums = <int>[];
  void rangeSumQueryImmutable303(List<int> nums) {
    this.nums = nums;
    for (final num in nums) {
      sums.add(num + (sums.isEmpty ? 0 : sums.last));
    }
  }

  int sumRange(int left, int right) {
    return sums[right] - (left == 0 ? 0 : sums[left - 1]);
  }
}