class FindNumbersWithEvenNumberOfDigits {
  static int findNumbers(List<int> nums) {
    var count = 0;
    for (var i = 0; i < nums.length; i++) {
      var n = nums[i];
      if (n.toString().length.isOdd) {
        continue;
      }
      count++;
    }
    return count;
  }
}
