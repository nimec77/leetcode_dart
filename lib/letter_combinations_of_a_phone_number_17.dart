import 'dart:collection';

class LetterCombinationsOfAPhoneNumber17 {
  static const map = {
    '2': ['a', 'b', 'c'],
    '3': ['d', 'e', 'f'],
    '4': ['g', 'h', 'i'],
    '5': ['j', 'k', 'l'],
    '6': ['m', 'n', 'o'],
    '7': ['p', 'q', 'r', 's'],
    '8': ['t', 'u', 'v'],
    '9': ['w', 'x', 'y', 'z'],
  };

  List<String> letterCombinations(String digits) {
    if (digits.isEmpty) {
      return [];
    }
    final result = <String>[];
    final queue = DoubleLinkedQueue<String>();
    for (var i = 0; i < digits.length; i++) {
      queue.add(digits[i]);
    }
    _letterCombinations(queue, map, result, '');
    return result;
  }

  void _letterCombinations(Queue<String> queue, Map<String, List<String>> map,
      List<String> result, String str) {
    if (queue.isEmpty) {
      result.add(str);
      return;
    }
    var key = queue.removeFirst();
    var values = map[key]!;
    for (var i = 0; i < values.length; i++) {
      _letterCombinations(queue, map, result, str + values[i]);
    }
    queue.addFirst(key);
  }
}
