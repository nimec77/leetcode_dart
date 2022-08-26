import 'dart:math' as math;

class ReplaceElementsWithGreatestElementOnRightSide1299 {
  List<int> replaceElements(List<int> arr) {
    final n = arr.length;
    var max = arr[n - 1];
    for (var i = n - 2; i >= 0; i--) {
      final value = arr[i];
      arr[i] = max;
      max = math.max(max, value);
    }
    arr[n - 1] = -1;
    return arr;
  }
}
