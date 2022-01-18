import 'package:couple_counter/constants.dart';
import 'package:couple_counter/screens/all_imports.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:couple_counter/components/buildIllustration.dart';
import 'package:intl/intl.dart';

class DateScreen extends StatefulWidget {
  static const String id = 'date_screen';

  @override
  _DateScreenState createState() => _DateScreenState();
}

class _DateScreenState extends State<DateScreen> {
  late DateTime selectedDate;
  final DateFormat formatter = DateFormat('yyyy-MM-dd');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Your relationship',
              style: headingTextStyle,
            ),
            BuildIllustration(
              illustration: AssetImage(
                'assets/images/illustration2.png',
              ),
              illustrationDescription: 'Since when are you two a couple?',
            ),
            SizedBox(
              height: 150,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                maximumYear: DateTime.now().year,
                onDateTimeChanged: (value) {
                  selectedDate = value;
                },
                initialDateTime: DateTime.now(),
              ),
            ),
            ElevatedButton(
              style: elevatedButtonStyle,
              onPressed: () {
                final DateTime date = selectedDate;
                final String formattedDate = formatter.format(date);
                print(formattedDate);
                Navigator.pushNamed(context, LocationScreen.id);
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Your Date',
                  style: TextStyle(
                    fontFamily: fontFamily,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
