import 'package:custom_painter_practice/components/clock_view.dart';
import 'package:flutter/material.dart';

class ClockApp extends StatefulWidget {
  const ClockApp({Key? key}) : super(key: key);

  @override
  _ClockAppState createState() => _ClockAppState();
}

class _ClockAppState extends State<ClockApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          color: Color(0xff2D2F41),
          child: ClockView()),
    );
  }
}
