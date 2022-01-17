import 'dart:async';
import 'timerCard.dart';
import 'package:flutter/material.dart';

class DurationTimer extends StatefulWidget {
  @override
  _DurationTimerState createState() => _DurationTimerState();
}

class _DurationTimerState extends State<DurationTimer> {
  Duration duration = Duration();
  Timer? timer;

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  void addTime() {
    final addSeconds = 1;

    setState(() {
      final seconds = duration.inSeconds + addSeconds;
      duration = Duration(seconds: seconds);
    });
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (_) => addTime());
  }

  @override
  Widget build(BuildContext context) {
    return buildTime();
  }

  Widget buildTime() {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final days = twoDigits(duration.inDays.remainder(31));
    final hours = twoDigits(duration.inHours.remainder(24));
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // buildTimeCard(time: days, header: 'DAYS'),
        const SizedBox(
          width: 8.0,
        ),
        buildTimeCard(time: hours, header: 'HOURS'),
        const SizedBox(
          width: 8.0,
        ),
        buildTimeCard(time: minutes, header: 'MINUTES'),
        const SizedBox(
          width: 8.0,
        ),
        buildTimeCard(time: seconds, header: 'SECONDS'),
      ],
    );
  }
}
