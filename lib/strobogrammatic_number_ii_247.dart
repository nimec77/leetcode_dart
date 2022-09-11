class StrobogrammaticNumberIi247 {
  late int target;

  List<String> findStrobogrammatic(int n) {
    target = n;
    return findStrobogrammaticHelper(n);
  }

  List<String> findStrobogrammaticHelper(int n) {
    if (n == 0) {
      return [''];
    }
    if (n == 1) {
      return ['0', '1', '8'];
    }
    final result = <String>[];
    final list = findStrobogrammaticHelper(n - 2);
    for (final s in list) {
      if (n != target) {
        result.add('0${s}0');
      }
      result.add('1${s}1');
      result.add('6${s}9');
      result.add('8${s}8');
      result.add('9${s}6');
    }
    return result;
  }
}
