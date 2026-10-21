import 'package:flutter/material.dart';

enum CalcButtonType { number, function, operator, equal }

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    super.key,
    required this.label,
    required this.onTap,
    this.wide = false,
    this.type = CalcButtonType.number,
  });

  final String label;
  final VoidCallback onTap;
  final bool wide;
  final CalcButtonType type;

  static const _purple = LinearGradient(
    colors: [Color(0xff6f7dd8), Color(0xff9a73ff)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const _orange = LinearGradient(
    colors: [Color(0xfff6799b), Color(0xfffa8d50)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final ShapeBorder shape = wide
        ? const StadiumBorder()
        : theme.elevatedButtonTheme.style?.shape?.resolve({}) ?? CircleBorder();

    final gradient = switch (type) {
      CalcButtonType.operator => _purple,
      CalcButtonType.equal => _orange,
      _ => null,
    };

    final color = type == CalcButtonType.function 
        ? const Color(0xff464d78)
        : const Color(0xff2a2f4d);

    return ElevatedButton(
      onPressed: onTap, 
      style: ElevatedButton.styleFrom(
        shape: shape as OutlinedBorder,
        minimumSize: Size.infinite,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        padding: EdgeInsets.zero
      ),
      child: 
    Ink(
      decoration: ShapeDecoration(
        shape: shape,
        color: gradient == null ? color : null,
        gradient: gradient 
        ),
      child: Padding(
        padding: EdgeInsets.only(left: wide? 40 : 0),
        child: Align(
          alignment: wide ? Alignment.centerLeft : Alignment.center,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(label, style: theme.textTheme.titleLarge,),
          ),
        ),
        ),
    )
    );
  }
}
