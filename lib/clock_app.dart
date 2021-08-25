import 'package:custom_painter_practice/components/clock_view.dart';
import 'package:custom_painter_practice/components/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ClockApp extends StatefulWidget {
  const ClockApp({Key? key}) : super(key: key);

  @override
  _ClockAppState createState() => _ClockAppState();
}

class _ClockAppState extends State<ClockApp> {
  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var formattedTime = DateFormat('HH:mm').format(now);
    var formattedDate = DateFormat('EEE, d MMM').format(now);
    var timeZoneString = now.timeZoneOffset.toString().split('.').first;
    var offsetSign = '';

    if (!timeZoneString.startsWith('-')) offsetSign = '+';

    return Scaffold(
      backgroundColor: Color(0xff2D2F41),
      body: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIconButton(
                text: 'Clock',
                iconPath: 'assets/clock_icon.png',
                onPressed: () {},
              ),
              CustomIconButton(
                text: 'Alarm',
                iconPath: 'assets/alarm_icon.png',
                onPressed: () {},
              ),
              CustomIconButton(
                text: 'Timer',
                iconPath: 'assets/timer_icon.png',
                onPressed: () {},
              ),
              CustomIconButton(
                text: 'Stopwatch',
                iconPath: 'assets/stopwatch_icon.png',
                onPressed: () {},
              ),
            ],
          ),
          VerticalDivider(
            color: Colors.white54,
            width: 1,
          ),
          Expanded(
            child: _buildClockArea(
                formattedTime, formattedDate, offsetSign, timeZoneString),
          ),
        ],
      ),
    );
  }

  Container _buildClockArea(String formattedTime, String formattedDate,
      String offsetSign, String timeZoneString) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(32),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Clock',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                formattedTime,
                style: TextStyle(color: Colors.white, fontSize: 64),
              ),
              Text(
                formattedDate,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: 32,
              ),
              ClockView(),
              SizedBox(
                height: 32,
              ),
              Text(
                'Timezone',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Icon(
                    Icons.language,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    'UTC ' + offsetSign + timeZoneString,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
