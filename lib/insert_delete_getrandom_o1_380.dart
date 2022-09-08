import 'dart:math' as math;

class RandomSet {
  final map = <int, int>{};

  RandomSet() {
    map.clear();
  }

  bool insert(int val) {
    if (map.containsKey(val)) {
      return false;
    }
    map[val] = val;
    return true;
  }

  bool remove(int val) {
    if (map.containsKey(val)) {
      map.remove(val);
      return true;
    }
    return false;
  }

  int getRandom() {
    final random = math.Random();
    final index = random.nextInt(map.length);
    return map.values.elementAt(index);
  }
}
