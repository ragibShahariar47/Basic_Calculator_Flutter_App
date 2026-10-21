import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/ui/calculator_ui.dart';

class DesktopScaffold extends StatefulWidget {
  const new({super.key, required this.screenWidth});

  final double screenWidth;

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {final baseTheme = Theme.of(context);
    // below logic is for foldables
    TextStyle style = widget.screenWidth < 360
        ? Theme.of(context).textTheme.bodyMedium!
        : Theme.of(context).textTheme.titleLarge!;

  return Theme(
    data: baseTheme.copyWith(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: baseTheme.elevatedButtonTheme.style?.copyWith(
          shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        ),
        ),
      ),
    ),
    child: AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(20)),
              border: BoxBorder.all(color: Colors.white24, width: 5)
            ), width: 490, child: CalculatorUI(
              
            )),
          ),
        ),
      ),
    ),
  );

  }
}
