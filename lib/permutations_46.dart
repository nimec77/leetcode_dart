class Permutations46 {
  List<List<int>> permute(List<int> nums) {
    final  result = <List<int>>[];
    final current = <int>[];
    final used = List<bool>.filled(nums.length, false, growable: false);
    permuteHelper(nums, result, current, used);
    return result;
  }

  void permuteHelper(
    List<int> nums,
    List<List<int>> result,
    List<int> current,
    List<bool> used,
  ) {
    if (current.length == nums.length) {
      result.add(current.toList());
      return;
    }
    for (int i = 0; i < nums.length; i++) {
      if (used[i]) {
        continue;
      }
      used[i] = true;
      current.add(nums[i]);
      permuteHelper(nums, result, current, used);
      current.removeLast();
      used[i] = false;
    }
  }
}
