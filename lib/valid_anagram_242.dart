class ValidAnagram242 {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) {
      return false;
    }

    final sourceMap = <String, int>{};
    final targetMap = <String, int>{};
    for (var i = 0; i < s.length; i++) {
      sourceMap[s[i]] = sourceMap.putIfAbsent(s[i], () => 0) + 1;
    }

    for (var i = 0; i < t.length; i++) {
      if (!sourceMap.containsKey(t[i])) {
        return false;
      }
      targetMap[t[i]] = targetMap.putIfAbsent(t[i], () => 0) + 1;
    }
    for (var key in sourceMap.keys) {
      if (sourceMap[key] != targetMap[key]) {
        return false;
      }
    }

    return true;
  }
}
