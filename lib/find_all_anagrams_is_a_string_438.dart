class FindAllAnagramsIsAString438 {
  List<int> findAnagrams(String s, String p) {
    final pLength = p.length;
    final sLength = s.length;
    if (pLength > sLength) {
      return [];
    }

    final List<int> result = [];
    final pMap = <String, int>{};
    final sMap = <String, int>{};
    for (var i = 0; i < pLength; i++) {
      pMap[p[i]] = pMap.putIfAbsent(p[i], () => 0) + 1;
      sMap[s[i]] = sMap.putIfAbsent(s[i], () => 0) + 1;
    }
    if (pMap.keys.every((key) => pMap[key] == sMap[key])) {
      result.add(0);
    }
    var left = 0;
    for (var right = pLength; right < sLength; right++) {
      final rightChar = s[right];
      sMap[rightChar] = sMap.putIfAbsent(rightChar, () => 0) + 1;
      final leftChar = s[left];
      sMap[leftChar] = sMap[leftChar]! - 1;
      left++;
      if (pMap.keys.every((key) => pMap[key] == sMap[key])) {
        result.add(left);
      }
    }
    return result;
  }
}
