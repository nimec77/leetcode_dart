class KthSmallestElementInASortedMatrix378 {
  int kthSmallest(List<List<int>> matrix, int k) {
    final n = matrix.length;
    var low = matrix[0][0];
    var high = matrix[n - 1][n - 1];
    while (low < high) {
      final mid = low + (high - low) ~/ 2;
      var count = 0;
      var j = n - 1;
      for (var i = 0; i < n; i++) {
        while (j >= 0 && matrix[i][j] > mid) {
          j--;
        }
        count += j + 1;
      }
      if (count < k) {
        low = mid + 1;
      } else {
        high = mid;
      }
    }
    return low;
  }
}