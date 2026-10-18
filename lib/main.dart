import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_screen.dart';
import 'package:flutter_application_1/responsive/desktop_scaffold.dart';
import 'package:flutter_application_1/responsive/mobile_scaffold.dart';
import 'package:flutter_application_1/responsive/tablet_scaffold.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
    );
  }
}
