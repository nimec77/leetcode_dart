class PalindromicSubstrings647 {
  int countSubstrings(String s) {
    var count = 0;
    final n = s.length;
    for (var i = 0; i < n; i++) {
      var left = i, right = i;
      count += process(s, left, right);
      if (i < n - 1) {
        count += process(s, i, i + 1);
      }
    }
    return count;
  }

  int process(String s, int left, int right) {
    var count = 0;
    while (left >= 0 && right < s.length && s[left] == s[right]) {
      count++;
      left--;
      right++;
    }
    return count;
  }
}