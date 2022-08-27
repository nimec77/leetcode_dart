class RansomNote383 {
  bool canConstruct(String ransomNote, String magazine) {
    final ransomNoteMap = <String, int>{};
    for (var i = 0; i < ransomNote.length; i++) {
      final char = ransomNote[i];
      ransomNoteMap[char] = (ransomNoteMap[char] ?? 0) + 1;
    }
    for (var i = 0; i < magazine.length; i++) {
      final char = magazine[i];
      if (ransomNoteMap.containsKey(char)) {
        ransomNoteMap[char] = ransomNoteMap[char]! - 1;
        if (ransomNoteMap[char] == 0) {
          ransomNoteMap.remove(char);
        }
      }
    }
    return ransomNoteMap.isEmpty;
  }

  // check if the letters in magazine conta
  // 'can be contructed' ?
  // each letter in magazine only use one time
  // using HashTable
  bool canConstruct2(String ransomNote, String magazine) {
    final magazineMap = dictionary(magazine);
    final chars = ransomNote.split('');

    chars.removeWhere((char) {
      if (magazineMap.containsKey(char) && magazineMap[char]! > 0) {
        magazineMap[char] = magazineMap[char]! - 1;
        return true;
      }
      return false;
    });

    return chars.isEmpty;
  }

  Map<String, int> dictionary(String content) {
    final letters = content.split('');
    final dictionary = <String, int>{};
    for (final e in letters) {
      dictionary[e] = (dictionary[e] ?? 0) + 1;
    }
    return dictionary;
  }
}
