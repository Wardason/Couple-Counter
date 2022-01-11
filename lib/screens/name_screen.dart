import 'package:flutter/material.dart';
import 'package:couple_counter/componets.dart';

class NameScreen extends StatefulWidget {
  static const String id = 'name_screen';

  @override
  _NameScreenState createState() => _NameScreenState();
}

Widget buildIllustration() {
  return Column(
    children: <Widget>[
      Image(
        image: AssetImage('assets/images/illustration1.png'),
      ),
      Text(
        'Whats the name of you and your partner?',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          fontFamily: fontFamily,
          letterSpacing: 0.6,
        ),
      ),
    ],
  );
}

class _NameScreenState extends State<NameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Your relationship',
              style: TextStyle(fontSize: 25),
            ),
            buildIllustration(),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                shadowColor: Colors.black,
                fixedSize: Size(270, 50),
                elevation: 7.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                textStyle: TextStyle(
                  fontSize: 20,
                  letterSpacing: 0.5,
                ),
              ),
              onPressed: () {
                print('your names');
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Your names'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
