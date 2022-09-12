class SpiralMatrix54 {
  List<int> spiralOrder(List<List<int>> matrix) {
    if (matrix.isEmpty) {
      return [];
    }
    var result = <int>[];
    var left = 0;
    var right = matrix[0].length;
    var top = 0;
    var bottom = matrix.length;

    while (left < right && top < bottom) {
      for (var i = left; i < right; i++) {
        result.add(matrix[top][i]);
      }
      top++;
      for (var i = top; i < bottom; i++) {
        result.add(matrix[i][right - 1]);
      }
      right--;
      if (!(left < right && top < bottom)) {
        break;
      }
      for (var i = right - 1; i >= left; i--) {
        result.add(matrix[bottom - 1][i]);
      }
      bottom--;
      for (var i = bottom - 1; i >= top; i--) {
        result.add(matrix[i][left]);
      }
      left++;
    }

    return result;
  }
}