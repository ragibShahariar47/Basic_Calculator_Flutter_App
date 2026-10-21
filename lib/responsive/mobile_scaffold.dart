import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/ui/calculator_ui.dart';

class MobileScaffold extends StatefulWidget {
  const new({super.key, required this.screenWidth});

  final double screenWidth;

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    // below logic is for foldables
    TextStyle style = widget.screenWidth < 360
        ? Theme.of(context).textTheme.bodyMedium!
        : Theme.of(context).textTheme.titleLarge!;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: CalculatorUI(),
        ),
      ),
    );
  }
}

