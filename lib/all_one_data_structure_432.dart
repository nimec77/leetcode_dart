import 'dart:math' as math;

// https://leetcode.com/problems/all-oone-data-structure/
class AllOne {
  final lookup = <int, Set<String>>{};
  final counts = <String, int>{};
  var maxIndex = 0;
  var minIndex = 0;

  AllOne();

  void inc(String key) {
    if (!counts.containsKey(key)) {
      counts[key] = 1;
      lookup.putIfAbsent(1, () => <String>{}).add(key);
      minIndex = 1;
      if (maxIndex < 1) {
        maxIndex = 1;
      }
    } else {
      var count = counts[key]!;
      lookup[count]?.remove(key);
      if (minIndex == count && (lookup[count]?.isEmpty ?? true)) {
        minIndex++;
      }
      count++;
      counts[key] = count;
      lookup.putIfAbsent(count, () => <String>{}).add(key);

      maxIndex = math.max(count, maxIndex);
    }
  }

  void dec(String key) {
    if (!counts.containsKey(key)) {
      return;
    }
    var count = counts[key]!;
    lookup[count]?.remove(key);
    if (minIndex == count && (lookup[count]?.isEmpty ?? true)) {
      minIndex--;
    }
    if (count == maxIndex && (lookup[count]?.isEmpty ?? true)) {
      maxIndex--;
    }
    count--;
    counts[key] = count;

    if (count > 0) {
      lookup.putIfAbsent(count, () => <String>{}).add(key);
    } else {
      counts.remove(key);
    }
  }

  String getMaxKey() {
    if (lookup[maxIndex]?.isNotEmpty?? false) {
      return lookup[maxIndex]!.first;
    }
    return '';
  }

  String getMinKey() {
    if (lookup[minIndex]?.isNotEmpty?? false) {
      return lookup[minIndex]!.first;
    }
    if (minIndex == 0 && counts.isNotEmpty) {
      while (lookup[minIndex]?.isEmpty ?? true) {
        minIndex++;
      }
      return lookup[minIndex]!.first;
    }
    return '';
  }
}
