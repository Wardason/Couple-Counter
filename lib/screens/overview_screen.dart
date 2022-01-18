import 'package:couple_counter/components/heartAnimation.dart';
import 'package:couple_counter/constants.dart';
import 'package:couple_counter/components/durationTimer.dart';
import 'package:couple_counter/components/timerCard.dart';
import 'package:flutter/material.dart';
import 'date_screen.dart';

class OverviewScreen extends StatefulWidget {
  static const String id = 'overview_screen';

  @override
  _OverviewScreenState createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Colson + Megan',
              style: headingTextStyle,
            ),
            HeartAnimation(),
            Text('Together since 10.10.2021 or'),
            DurationTimer(),
            ElevatedButton(onPressed: () {}, child: Text('Test'))
          ],
        ),
      ),
    );
  }
}
