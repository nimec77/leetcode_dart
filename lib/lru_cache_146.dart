import 'dart:collection';

class LRUCache {
  late final int capacity;
  final cache = <int, int>{};
  final keys = DoubleLinkedQueue<int>();

  LRUCache(this.capacity) {
    cache.clear();
    keys.clear();
  }

  int get(int key) {
    if (cache.containsKey(key)) {
      keys.remove(key);
      keys.add(key);
      return cache[key]!;
    }
    return -1;
  }

  void put(int key, int value) {
    if (cache.containsKey(key)) {
      keys.remove(key);
    } else if (cache.length == capacity) {
      cache.remove(keys.removeFirst());
    }
    keys.add(key);
    cache[key] = value;
  }
}