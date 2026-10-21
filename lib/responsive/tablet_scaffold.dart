import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/ui/calculator_ui.dart';

class TabletScaffold extends StatefulWidget {
  const new({super.key, required this.screenWidth});

  final double screenWidth;

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
Widget build(BuildContext context) {
  final baseTheme = Theme.of(context);
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
            child: SizedBox(width: 490, child: CalculatorUI()),
          ),
        ),
      ),
    ),
  );
}
}
