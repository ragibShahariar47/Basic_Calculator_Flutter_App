class CalculatorLogic {
  static const _digits = [
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '0',
  ];

  String display = '0';

  void press(String key) {
    if (_digits.contains(key)) {
      _digit(key);
    } else if (key == '.') {
      _decimal(key);
    } else if (key == 'AC') {
      display = '0';
    }
  }

  void _digit(String digit) {
    if (display == '0') {
      display = digit;
    } else if (display.replaceAll('-', '').replaceAll('.', '').length < 12) {
      display += digit;
    }
  }

  void _decimal(String decimal) {
    if (!display.contains('.')) {
      display += '.';
    }
  }
}
