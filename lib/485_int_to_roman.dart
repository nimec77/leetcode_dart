class IntToRoman {
  static String intToRoman(int num) {
    final sb = StringBuffer();

    final arrays = [
      ['', 'M', 'MM', 'MMM'],
      ['', 'C', 'CC', 'CCC', 'CD', 'D', 'DC', 'DCC', 'DCCC', 'CM'],
      ['', 'X', 'XX', 'XXX', 'XL', 'L', 'LX', 'LXX', 'LXXX', 'XC'],
      ['', 'I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX'],
    ];

    final numDigits = num.toString().padLeft(4, '0').split('');

    for (var i = 0; i <numDigits.length; i++) {
      final digit = numDigits[i];
      final array = arrays[i];
      sb.write(array[int.parse(digit)]);
    }

    return sb.toString();
  }

  static String intToRoman2(int num) {
    final intCode = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1];
    final strCode = [
      'M',
      'CM',
      'D',
      'CD',
      'C',
      'XC',
      'L',
      'XL',
      'X',
      'IX',
      'V',
      'IV',
      'I',
    ];

    var sb = StringBuffer();
    for (var i = 0; num > 0 && i < intCode.length; i++) {
      while (num >= intCode[i]) {
        sb.write(strCode[i]);
        num -= intCode[i];
      }
    }
    return sb.toString();
  }
}
