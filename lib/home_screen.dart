import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    required this.mobileScaffold,
    required this.tabletScaffold,
    required this.desktopScaffold,
  });

  final Widget Function(double width) mobileScaffold;
  final Widget Function(double width) tabletScaffold;
  final Widget Function(double width) desktopScaffold;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double w = constraints.maxWidth;
        if (w <= 500) {
          return widget.mobileScaffold(w);
        } else if (w < 1100) {
          return widget.tabletScaffold(w);
        } else {
          return widget.desktopScaffold(w);
        }
      },
    );
  }
}
