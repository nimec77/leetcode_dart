class RomainToInteger {
  // int romanToInt(String s) {
  //   final map = {
  //     'I': 1,
  //     'V': 5,
  //     'X': 10,
  //     'L': 50,
  //     'C': 100,
  //     'D': 500,
  //     'M': 1000,
  //   };
  //   var result = 0;
  //   for (var i = 0; i < s.length; ++i) {
  //     final current = map[s[i]]!;
  //     final next = i + 1 < s.length ? map[s[i + 1]]! : 0;
  //     if (current < next) {
  //       result -= current;
  //     } else {
  //       result += current;
  //     }
  //   }
  //   return result;
  // }

  static const map = {
    'MMM': 3000,
    'MM': 2000,
    'M': 1000,
    'CM': 900,
    'DCCC': 800,
    'DCC': 700,
    'DC': 600,
    'D': 500,
    'CD': 400,
    'CCC': 300,
    'CC': 200,
    'C': 100,
    'XC': 90,
    'LXXX': 80,
    'LXX': 70,
    'LX': 60,
    'L': 50,
    'XL': 40,
    'XXX': 30,
    'XX': 20,
    'X': 10,
    'IX': 9,
    'VIII': 8,
    'VII': 7,
    'VI': 6,
    'V': 5,
    'IV': 4,
    'III': 3,
    'II': 2,
    'I': 1,
  };

  int romanToInt(String s) {
    var result = 0;
    var i = 0;

    while (i < s.length) {
      for (final entry in map.entries) {
        final key = entry.key;
        final value = entry.value;
        if (s.startsWith(key, i)) {
          result += value;
          i += key.length;
          break;
        }
      }
    }

    return result;
  }
}
