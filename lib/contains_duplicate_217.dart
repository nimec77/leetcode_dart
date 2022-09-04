class ContainsDuplicate217 {
  bool containsDuplicate(List<int> nums) {
    final set = <int>{};
    for (final num in nums) {
      if (set.contains(num)) {
        return true;
      }
      set.add(num);
    }
    return false;
  }
}