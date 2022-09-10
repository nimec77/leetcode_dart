class FindAllNumbersDisappearedInAnArray448 {
  List<int> findDisappearedNumbers(List<int> nums) {
    for (var i = 0; i < nums.length; i++) {
      var index = nums[i].abs() - 1;
      if (nums[index] > 0) {
        nums[index] = -nums[index];
      }
    }
    final result = <int>[];
    for (var i = 0; i < nums.length; i++) {
      if (nums[i] > 0) {
        result.add(i + 1);
      }
    }
    return result;
  }
}