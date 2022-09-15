class ValidSudoku36 {
  bool isValidSudoku(List<List<String>> board) {
    final rows = <int, Set<String>>{};
    final cols = <int, Set<String>>{};
    final cubes = <String, Set<String>>{};
    for (var r = 0; r < 9; r++) {
      for (var c = 0; c < 9; c++) {
        final num = board[r][c];
        if (num == '.') {
          continue;
        }
        final cubeIndex = '${r ~/ 3}-${c ~/ 3}';
        if (rows.putIfAbsent(r, () => <String>{}).contains(num) ||
            cols.putIfAbsent(c, () => <String>{}).contains(num) ||
            cubes
                .putIfAbsent(cubeIndex, () => <String>{})
                .contains(num)) {
          return false;
        }
        rows[r]!.add(num);
        cols[c]!.add(num);
        cubes[cubeIndex]!.add(num);
      }
    }
    return true;
  }
}
