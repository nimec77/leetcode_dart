class MinimumWindowSubstring76 {
  String minWindow(String s, String t) {
    final sLength = s.length;
    final tLength = t.length;
    if (sLength == 0 || tLength == 0 || tLength > sLength) {
      return '';
    }
    final dictT = <String, int>{};
    for (var i = 0; i < tLength; i++) {
      dictT[t[i]] = dictT.putIfAbsent(t[i], () => 0) + 1;
    }
    final required = dictT.length;
    final filteredS = <MapEntry<int, String>>[];
    for (var i = 0; i < sLength; i++) {
      final char = s[i];
      if (dictT.containsKey(char)) {
        filteredS.add(MapEntry(i, char));
      }
    }
    var l = 0, r = 0, formed = 0;
    final windowCounts = <String, int>{};
    final ans = [-1, 0, 0];
    while (r < filteredS.length) {
      final char = filteredS[r].value;
      windowCounts[char] = windowCounts.putIfAbsent(char, () => 0) + 1;
      if (dictT[char] == windowCounts[char]) {
        formed++;
      }
      while (l <= r && formed == required) {
        final char = filteredS[l].value;
        final start = filteredS[l].key;
        final end = filteredS[r].key;
        if (ans[0] == -1 || end - start + 1 < ans[0]) {
          ans[0] = end - start + 1;
          ans[1] = start;
          ans[2] = end;
        }
        windowCounts[char] = windowCounts[char]! - 1;
        if (dictT.containsKey(char) && windowCounts[char]! < dictT[char]!) {
          formed--;
        }
        l++;
      }
      r++;
    }
    return ans[0] == -1 ? '' : s.substring(ans[1], ans[2] + 1);
  }
}