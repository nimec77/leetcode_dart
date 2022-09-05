import 'dart:math' as math;

class LongestRepeatingCharacterReplacement424 {
  int characterReplacement(String s, int k) {
    final map = <String, int>{};
    var maxCount = 0;
    var left = 0;
    var right = 0;
    while (right < s.length) {
      map[s[right]] = map.putIfAbsent(s[right], () => 0) + 1;
      maxCount = math.max(maxCount, map[s[right]]!);
      if (right - left + 1 - maxCount > k) {
        map[s[left]] = map[s[left]]! - 1;
        left++;
      }
      right++;
    }
    return right - left;
  }
}