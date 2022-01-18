import 'dart:async';
import 'dart:ffi';
import 'timerCard.dart';
import 'package:flutter/material.dart';

class DurationTimer extends StatefulWidget {
  @override
  _DurationTimerState createState() => _DurationTimerState();
}

class _DurationTimerState extends State<DurationTimer> {
  Duration duration = Duration();
  Timer? timer;
  final fromDate = DateTime(2020, 10, 12);
  final toDate = DateTime.now();

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  void addTime() {
    final addSeconds = 86400;

    setState(() {
      final seconds = duration.inSeconds + addSeconds;
      duration = Duration(seconds: seconds);
    });
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (_) => addTime());
  }

  void differenceFromDates() {
    daysBetween(fromDate, toDate);
    final difference = daysBetween(fromDate, toDate);
    final differenceDays = (difference % 30.4).floor();
    final differenceInMonths = (difference / 30.4);
    final differenceMonths = (differenceInMonths % 12).floor();
    final differenceYears = (differenceInMonths / 12).floor();
  }

  @override
  Widget build(BuildContext context) {
    return buildTime();
  }

  Widget buildTime() {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final years = twoDigits(0);
    final months = twoDigits(3);
    final days = twoDigits(duration.inDays.remainder(31));
    //final seconds = twoDigits(duration.inSeconds.remainder(60));

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        buildTimeCard(time: years, header: 'YEARS'),
        const SizedBox(
          width: 8.0,
        ),
        buildTimeCard(time: months, header: 'MONTHS'),
        const SizedBox(
          width: 8.0,
        ),
        buildTimeCard(time: days, header: 'DAYS'),
      ],
    );
  }
}
