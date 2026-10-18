import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    required this.mobileScaffold,
    required this.tabletScaffold,
    required this.desktopScaffold,
  });

  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 500) {
          return widget.mobileScaffold;
        } else if (constraints.maxWidth < 1100) {
          return widget.tabletScaffold;
        } else {
          return widget.desktopScaffold;
        }
      },
    );
  }
}
