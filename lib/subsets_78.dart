class Subsets78 {
  List<List<int>> subsets(List<int> nums) {
    List<List<int>> result = [];
    List<int> current = [];
    subsetsHelper(nums, 0, current, result);
    return result;
  }

  void subsetsHelper(
    List<int> nums,
    int start,
    List<int> current,
    List<List<int>> result,
  ) {
    result.add(current.toList());
    for (int i = start; i < nums.length; i++) {
      current.add(nums[i]);
      subsetsHelper(nums, i + 1, current, result);
      current.removeLast();
    }
  }
}
