class ThirdMaximumNumber414 {
  int thirdMax(List<int> nums) {
    var max = nums[0];
    int? secondMax;
    int? thirdMax;
    for (var i = 1; i < nums.length; i++) {
      if (max == nums[i] || secondMax == nums[i] || thirdMax == nums[i]) {
        continue;
      }
      if (max < nums[i]) {
        thirdMax = secondMax;
        secondMax = max;
        max = nums[i];
        continue;
      }
      if (secondMax == null) {
        secondMax = nums[i];
        continue;
      }
      if (secondMax < nums[i]) {
        thirdMax = secondMax;
        secondMax = nums[i];
        continue;
      }
      if (thirdMax == null) {
        thirdMax = nums[i];
        continue;
      }
      if (thirdMax < nums[i]) {
        thirdMax = nums[i];
      }
    }
    return thirdMax ?? max;
  }

  int thirdMax3(List<int> nums) {
    final maximums = List<int?>.filled(3, null, growable: false);
    for (var i = 0; i < nums.length; i++) {
      var n = nums[i];
      for (var j = 0; j < 3; j++) {
        if (maximums[j] == n) {
          break;
        }
        if (maximums[j] == null) {
          maximums[j] = n;
          break;
        }
        final m = maximums[j]!;
        if (m < n) {
          maximums[j] = n;
          n = m;
        }
      }
    }
    return maximums.last ?? maximums.first!;
  }

  int thirdMax2(List<int> nums) {
    final sorted = nums.toSet().toList()..sort();
    if (sorted.length < 3) {
      return sorted.last;
    }
    return sorted[sorted.length - 3];
  }
}
