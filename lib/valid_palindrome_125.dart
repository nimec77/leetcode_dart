class ValidPalindrome125 {
  bool isPalindrome(String s) {
    if (s.isEmpty) {
      return true;
    }
    final source = s.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
    final n = source.length;
    for (var i = 0; i < n ~/ 2; i++) {
      if (source[i] != source[n - 1 - i]) {
        return false;
      }
    }

    return true;
  }
}