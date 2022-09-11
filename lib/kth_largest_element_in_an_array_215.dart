class KthLargestElementInAnArray215 {
  int findKthLargest(List<int> nums, int k) {
    final n = nums.length - k;

    int quickSelect(int left, int right) {
      var pivot = nums[right];
      var p = left;
      for (var i = left; i < right; i++) {
        if (nums[i] <= pivot) {
          var temp = nums[i];
          nums[i] = nums[p];
          nums[p] = temp;
          p++;
        }
      }
      var temp = nums[right];
      nums[right] = nums[p];
      nums[p] = temp;
      if (p > n) {
        return quickSelect(left, p - 1);
      } else if (p < n) {
        return quickSelect(p + 1, right);
      } else {
        return nums[p];
      }
    }

    return quickSelect(0, nums.length - 1);
    }
  }
