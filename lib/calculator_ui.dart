import 'package:flutter/material.dart';

class CalculatorUI extends StatelessWidget {
  const new({super.key, required this.style});

  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            width: .infinity,
            alignment: Alignment.bottomRight,
            child: Text(
              '0',
              style: TextStyle(
                color: Colors.white,
                fontSize: 70,
                fontWeight: .bold,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            margin: EdgeInsets.all(30),
            height: .infinity,
            width: .infinity,
            alignment: Alignment.bottomRight,
            child: Column(
              spacing: 10,
              children: [
                Expanded(
                  child: Row(
                    spacing: 10,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff464d78),
                          ),
                          onPressed: () {},
                          child: Text('AC', style: style),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff464d78),
                          ),
                          onPressed: () {},
                          child: Text('+/-', style: style),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff464d78),
                          ),
                          onPressed: () {},
                          child: Text('%', style: style),
                        ),
                      ),
                      Expanded(
                        child: Builder(
                          builder: (context) {
                            final shape =
                                Theme.of(context)
                                    .elevatedButtonTheme
                                    .style
                                    ?.shape
                                    ?.resolve({}) ??
                                CircleBorder();

                            return ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                shape: const CircleBorder(),
                              ),
                              child: Ink(
                                decoration: ShapeDecoration(
                                  shape: shape,
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xff6f7dd8),
                                      Color(0xff9a73ff),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text('/', style: style),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    spacing: 10,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('7', style: style),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('8', style: style),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('9', style: style),
                        ),
                      ),
                      Expanded(
                        child: Builder(
                          builder: (context) {
                            final shape =
                                Theme.of(context)
                                    .elevatedButtonTheme
                                    .style
                                    ?.shape
                                    ?.resolve({}) ??
                                CircleBorder();

                            return ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                shape: const CircleBorder(),
                              ),
                              child: Ink(
                                decoration: ShapeDecoration(
                                  shape: shape,
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xff6f7dd8),
                                      Color(0xff9a73ff),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text('X', style: style),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    spacing: 10,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('4', style: style),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('5', style: style),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('6', style: style),
                        ),
                      ),
                      Expanded(
                        child: Builder(
                          builder: (context) {
                            final shape =
                                Theme.of(context)
                                    .elevatedButtonTheme
                                    .style
                                    ?.shape
                                    ?.resolve({}) ??
                                CircleBorder();

                            return ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                shape: const CircleBorder(),
                              ),
                              child: Ink(
                                decoration: ShapeDecoration(
                                  shape: shape,
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xff6f7dd8),
                                      Color(0xff9a73ff),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text('-', style: style),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    spacing: 10,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('1', style: style),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('2', style: style),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('3', style: style),
                        ),
                      ),
                      Expanded(
                        child: Builder(
                          builder: (context) {
                            final shape =
                                Theme.of(context)
                                    .elevatedButtonTheme
                                    .style
                                    ?.shape
                                    ?.resolve({}) ??
                                CircleBorder();

                            return ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                shape: const CircleBorder(),
                              ),
                              child: Ink(
                                decoration: ShapeDecoration(
                                  shape: shape,
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xff6f7dd8),
                                      Color(0xff9a73ff),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text('+', style: style),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    spacing: 10,
                    children: [
                      Expanded(
                        flex: 2,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(left: 40),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            minimumSize: const Size(
                              .infinity,
                              .infinity,
                            ), // width == height makes it a circl
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {},
                          child: Text('0', style: style),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('.', style: style),
                        ),
                      ),
                      Expanded(
                        child: Builder(
                          builder: (context) {
                            final shape =
                                Theme.of(context)
                                    .elevatedButtonTheme
                                    .style
                                    ?.shape
                                    ?.resolve({}) ??
                                CircleBorder();

                            return ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                shape: const CircleBorder(),
                              ),
                              child: Ink(
                                decoration: ShapeDecoration(
                                  shape: shape,
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xfff6799b),
                                      Color(0xfffa8d50),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text('=', style: style),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
