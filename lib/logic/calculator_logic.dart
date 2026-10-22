class CalculatorLogic {
  static const _digits = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
  static const _operators = ['+', '−', '×', '÷'];

  String _input = '0'; // the number currently being typed
  double? _first; // stored first number
  String? _operator; // pending operator
  bool _newNumber = false; // true = next digit/dot starts a fresh number

  void press(String key) {
    if (_input == 'Error' && key != 'AC') return;

    if (_digits.contains(key)) {
      _digit(key);
    } else if (key == '.') {
      _decimal();
    } else if (key == 'AC') {
      _clear();
    } else if (_operators.contains(key)) {
      _operatorPressed(key);
    } else if (key == '=') {
      _equals();
    } else if (key == '=') {
      _equals();
    } else if (key == '±') {
      _toggleSign();
    } else if (key == '%') {
      _percent();
    }
  }

  void _digit(String d) {
    if (_newNumber || _input == '0') {
      _input = d;
      _newNumber = false;
    } else if (_input.replaceAll('-', '').replaceAll('.', '').length < 12) {
      _input += d;
    }
  }

  void _decimal() {
    if (_newNumber) {
      _input = '0.';
      _newNumber = false;
    } else if (!_input.contains('.')) {
      _input += '.';
    }
  }

  void _operatorPressed(String op) {
    if (_operator != null && !_newNumber) {
      // chaining: 5 + 3 × ... → finish 5 + 3 first
      final result = _calculate(_first!, double.parse(_input), _operator!);
      if (result.isNaN || result.isInfinite) return _setError();
      _first = result;
    } else if (_operator == null) {
      _first = double.parse(_input);
    }
    // if an operator is already pending, this just replaces it (5 + × → 5 ×)
    _operator = op;
    _newNumber = true;
  }
  String get display {
    if (_operator == null) return _input;
    final left = _format(_first!);
    if (_newNumber) return '$left$_operator';
    final right = _input.startsWith('-') ? '($_input)' : _input;
    return '$left$_operator$right';
  }

  void _equals() {
    // nothing to do without a pending operator and a typed second number
    if (_operator == null || _first == null || _newNumber) return;

    final result = _calculate(_first!, double.parse(_input), _operator!);
    if (result.isNaN || result.isInfinite) return _setError();

    _input = _format(result);
    _first = null;
    _operator = null;
    _newNumber = true; // typing after = starts a new calculation
  }

  void _setError() {
    _input = 'Error';
    _first = null;
    _operator = null;
    _newNumber = true;
  }

  void _clear() {
    _input = '0';
    _first = null;
    _operator = null;
    _newNumber = false;
  }

  void _toggleSign() {
    if (_operator != null && _newNumber) return; // no second number typed yet
    if (double.parse(_input) == 0) return; // "0" and "0." have no sign
    _input = _input.startsWith('-') ? _input.substring(1) : '-$_input';
  }

  void _percent() {
    if (_operator != null && _newNumber) return; // nothing to convert yet
    _input = _format(double.parse(_input) / 100);
  }  

  double _calculate(double a, double b, String op) => switch (op) {
    '+' => a + b,
    '−' => a - b,
    '×' => a * b,
    _ => a / b, // ÷
  };

    String _format(double n) {
    if (n == 0) return '0'; // also turns -0.0 into 0
    final abs = n.abs();

    // very large or very small → scientific notation (1.5e+13, 1e-7)
    if (abs >= 1e12 || abs < 1e-6) {
      final parts = n.toStringAsExponential(6).split('e'); // ['1.500000', '+13']
      return '${_trimZeros(parts[0])}e${parts[1]}';
    }

    // everything else: 12 significant digits, then drop the trailing zeros
    return _trimZeros(n.toStringAsPrecision(12));
  }

  // "8.00000000000" → "8", "0.300000000000" → "0.3"
  String _trimZeros(String s) {
    if (!s.contains('.')) return s;
    while (s.endsWith('0')) {
      s = s.substring(0, s.length - 1);
    }
    if (s.endsWith('.')) s = s.substring(0, s.length - 1);
    return s;
  }
}
