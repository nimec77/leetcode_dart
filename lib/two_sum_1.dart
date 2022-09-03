class TwoSum1 {
  List<int> twoSum(List<int> nums, int target) {
    final map = <int, int>{};
    for (var i = 0; i < nums.length; i++) {
      final complement = target - nums[i];
      if (map.containsKey(complement)) {
        return [map[complement]!, i];
      }
      map[nums[i]] = i;
    }
    return [];
  }
}