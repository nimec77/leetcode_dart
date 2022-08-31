class SortArrayByParity905 {
  List<int> sortArrayByParity(List<int> nums) {
    final n = nums.length;
    var i = 0;
    var j = n - 1;
    while (i < j) {
      if (nums[i].isOdd) {
        swap(nums, i, j);
        j--;
      } else {
        i++;
      }
    }
    return nums;
  }

  void swap(List<int> arr, int i, int j) {
    final temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
  }
}