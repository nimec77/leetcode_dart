class DuplicateZeros1089 {
  static void duplicateZeros(List<int> arr) {
    var zeros = arr.where((element) => element == 0).length;

    for (var i = arr.length - 1, j = arr.length + zeros - 1; i < j; --i, --j) {
      if (j < arr.length) {
        arr[j] = arr[i];
      }
      if (arr[i] == 0) {
       if (--j < arr.length) {
         arr[j] = arr[i];
       }
      }
    }
  }
}
