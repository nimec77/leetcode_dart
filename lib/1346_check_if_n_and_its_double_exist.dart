class CheckIfNAndItsDoubleExist {
  static bool checkIfExist(List<int> arr) {
    final map = <int, int>{};
    for (var i = 0; i < arr.length; i++) {
      map[arr[i]] = i;
    }
    for (var i = 0; i < arr.length; i++) {
      final value = arr[i] * 2;
      if (map.containsKey(value) && map[value] != i) {
        return true;
      }
    }
    return false;
  }

  static bool checkIfExist2(List<int> arr) {
    if (arr.length < 2) {
      return false;
    }
    for (var i = 0; i < arr.length - 1; ++i) {
      final x = arr[i] * 2;
      final y = arr[i] / 2;
      if (x == 0) {
        for (var j = i + 1; j < arr.length; ++j) {
          if (arr[j] == 0) {
            return true;
          }
        }
      } else if (y == y.truncate()) {
        for (var j = i + 1; j < arr.length; ++j) {
          if (arr[j] == x || arr[j] == y) {
            return true;
          }
        }
      } else {
        for (var j = i + 1; j < arr.length; ++j) {
          if (arr[j] == x) {
            return true;
          }
        }
      }
    }
    return false;
  }
}
