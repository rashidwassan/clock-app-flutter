import 'package:custom_painter_practice/clock_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Clock App',
      theme: ThemeData(
        //  scaffoldBackgroundColor: Color(0xff2D2F41),
        primarySwatch: Colors.blue,
      ),
      home: ClockApp(),
    );
  }
}
