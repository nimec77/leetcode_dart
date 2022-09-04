class GroupAnagrams49 {
  List<List<String>> groupAnagrams(List<String> strs) {
    final map = <String, List<String>>{};
    for (final str in strs) {
      final key = (str.split('').toList()..sort()).join();
      map.putIfAbsent(key, () => <String>[]).add(str);
    }
    return map.values.toList();
  }

  static const primes = {
    'a': 3,
    'b': 5,
    'c': 7,
    'd': 11,
    'e': 13,
    'f': 17,
    'g': 19,
    'h': 23,
    'i': 29,
    'j': 31,
    'k': 37,
    'l': 41,
    'm': 43,
    'n': 47,
    'o': 53,
    'p': 59,
    'q': 61,
    'r': 67,
    's': 71,
    't': 73,
    'u': 79,
    'v': 83,
    'w': 89,
    'x': 97,
    'y': 101,
    'z': 103,
  };

  List<List<String>> groupAnagrams2(List<String> strs) {
    final map = <int, List<String>>{};
    for (final str in strs) {
      final key = str.split('').fold<int>(1, (p, c) => p * primes[c]!);
      map.putIfAbsent(key, () => <String>[]).add(str);
    }
    return map.values.toList();
  }
}
