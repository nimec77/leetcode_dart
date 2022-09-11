class SudokuSolver37 {
  void solveSudoku(List<List<String>> board) {
    solve(board);
  }

  bool solve(List<List<String>> board) {
    for (var row = 0; row < 9; row++) {
      for (var col = 0; col < 9; col++) {
        if (board[row][col] == '.') {
          for (var num = 1; num <= 9; num++) {
            if (isValid(board, row, col, num)) {
              board[row][col] = '$num';
              if (solve(board)) {
                return true;
              }
              board[row][col] = '.';
            }
          }
          return false;
        }
      }
    }
    return true;
  }

  bool isValid(List<List<String>> board, int row, int col, int num) {
    for (var i = 0; i < 9; i++) {
      if (board[row][i] == '$num') {
        return false;
      }
      if (board[i][col] == '$num') {
        return false;
      }
      if (board[3 * (row ~/ 3) + i ~/ 3][3 * (col ~/ 3) + i % 3] == '$num') {
        return false;
      }
    }
    return true;
  }
}