import 'package:flutter/material.dart';
import 'package:couple_counter/constants.dart';
import 'package:couple_counter/components/buildIllustration.dart';

//const String api_key = 'AIzaSyDqIwqCds8RCOASwuPdE-wJXGNgzdB0sZ4';

class LocationScreen extends StatefulWidget {
  static const String id = 'location_screen';

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
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
                'assets/images/illustration3.png',
              ),
              illustrationDescription: 'Where did you first met?',
            ),
            ElevatedButton(
              style: elevatedButtonStyle,
              onPressed: () {
                print('go to overwiev');
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Where you meet',
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
