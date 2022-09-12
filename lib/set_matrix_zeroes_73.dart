class SetMatrixZeroes73 {
  void setZeroes(List<List<int>> matrix) {
    if (matrix.isEmpty) {
      return;
    }

    var isCol = false;
    int r = matrix.length;
    int c = matrix[0].length;

    for (var i = 0; i < r; i++) {
      if (matrix[i][0] == 0) {
        isCol = true;
      }
      for (var j = 1; j < c; j++) {
        if (matrix[i][j] == 0) {
          matrix[0][j] = 0;
          matrix[i][0] = 0;
        }
      }
    }

    for (var i = 1; i < r; i++) {
      for (var j = 1; j < c; j++) {
        if (matrix[i][0] == 0 || matrix[0][j] == 0) {
          matrix[i][j] = 0;
        }
      }
    }

    if (matrix[0][0] == 0) {
      for (var j = 1; j < c; j++) {
        matrix[0][j] = 0;
      }
    }

    if (isCol) {
      for (var i = 0; i < r; i++) {
        matrix[i][0] = 0;
      }
    }
  }
}