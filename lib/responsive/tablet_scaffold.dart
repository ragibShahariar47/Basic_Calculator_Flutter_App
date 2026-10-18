import 'package:flutter/material.dart';

class TabletScaffold extends StatefulWidget {
  const new({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.lightBlueAccent),
      ),
    );
  }
}
