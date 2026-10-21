import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/calculator_button.dart';

class CalculatorUI extends StatelessWidget {
  const new({super.key});

  static const _gap = 10.0;
  Widget _key(
    String label, {
    CalcButtonType type = CalcButtonType.number,
    int flex = 1,
  }) {
    return Expanded(
      flex: flex,
      child: CalculatorButton(label: label, type: type, wide: flex == 2, onTap: () {}),
    );
  }

  Widget _row(List<Widget> keys) {
    return Expanded(
      child: Row(spacing: _gap, children: [...keys]),
    );
  }

  @override
  Widget build(BuildContext context) {
    final fn = CalcButtonType.function;
    final op = CalcButtonType.operator;
    return Column(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            alignment: Alignment.bottomRight,
            child: const FittedBox(
              // long numbers shrink, no overflow
              fit: BoxFit.scaleDown,
              child: Text(
                '0',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              spacing: _gap,
              children: [
                _row([
                  _key('AC', type: fn),
                  _key('±', type: fn),
                  _key('%', type: fn),
                  _key('÷', type: op),
                ]),
                _row([_key('7'), _key('8'), _key('9'), _key('×', type: op)]),
                _row([_key('4'), _key('5'), _key('6'), _key('−', type: op)]),
                _row([_key('1'), _key('2'), _key('3'), _key('+', type: op)]),
                _row([
                  _key('0', flex: 2),
                  _key('.'),
                  _key('=', type: CalcButtonType.equal),
                ]),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
