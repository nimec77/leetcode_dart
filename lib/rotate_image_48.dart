class RotateImage48 {
  void rotate(List<List<int>> matrix) {
    final n = matrix.length;
    for (var i = 0; i < n / 2; i++) {
      for (var j = i; j < n - i - 1; j++) {
        final temp = matrix[i][j];
        matrix[i][j] = matrix[n - j - 1][i];
        matrix[n - j - 1][i] = matrix[n - i - 1][n - j - 1];
        matrix[n - i - 1][n - j - 1] = matrix[j][n - i - 1];
        matrix[j][n - i - 1] = temp;
      }
    }
  }
}