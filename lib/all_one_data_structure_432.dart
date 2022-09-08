import 'dart:math' as math;

// https://leetcode.com/problems/all-oone-data-structure/
class AllOne {
  final map = <String, int>{};
  final countMap = <int, Set<String>>{};
  int min = 0;
  int max = 0;

  AllOne();

  void inc(String key) {
    if (min == 0) {
      min = 1;
    }
    int count = map[key] ?? 0;
    map[key] = count + 1;
    if (count > 0) {
      countMap[count]!.remove(key);
      if (countMap[count]!.isEmpty) {
        countMap.remove(count);
        if (count == min) {
          min = countMap.keys.isEmpty ? 0 : countMap.keys.first;
        }
      }
    }
    countMap.putIfAbsent(count + 1, () => <String>{}).add(key);
    max = math.max(max, count + 1);
  }

  void dec(String key) {
    int count = map[key] ?? 0;
    if (count == 0) {
      return;
    }
    map[key] = count - 1;
    countMap[count]!.remove(key);
    if (count > 1) {
      countMap.putIfAbsent(count - 1, () => <String>{}).add(key);
    }
    if (countMap[count]!.isEmpty) {
      countMap.remove(count);
      if (count == max) {
        max = countMap.keys.isEmpty ? 0 : countMap.keys.last;
      }
    }
    min = math.min(count - 1, min);
  }

  String getMaxKey() {
    return max == 0 ? '' : countMap[max]!.first;
  }

  String getMinKey() {
    return min == 0 ? '' : countMap[min]!.first;
  }
}