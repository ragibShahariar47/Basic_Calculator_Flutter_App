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
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            minimumSize: const Size(
              .infinity,
              .infinity,
            ), // width == height makes it a circle
            backgroundColor: Color(0xff2a2f4d),
            padding: EdgeInsets.all(-10),
            foregroundColor: Colors.white,
          ),
        ),
        fontFamily: 'Poppins', // default font for all text
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Poppins',
          ), // default for plain Text()
          titleLarge: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(
        mobileScaffold: (w) => MobileScaffold(screenWidth: w),
        tabletScaffold: (w) => TabletScaffold(screenWidth: w),
        desktopScaffold: (w) => DesktopScaffold(screenWidth: w),
      ),
    );
  }
}
