import 'package:couple_counter/screens/all_imports.dart';
import 'package:flutter/material.dart';
import 'package:couple_counter/constants.dart';
import 'package:couple_counter/components/buildIllustration.dart';

class LocationScreen extends StatefulWidget {
  static const String id = 'location_screen';

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  TextEditingController customNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
          ),
          child: SafeArea(
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
                Container(
                  width: 270,
                  child: TextField(
                    controller: customNameController,
                    style: TextStyle(
                      fontFamily: fontFamily,
                      fontSize: 17,
                    ),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black87, width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black87, width: 2.0),
                      ),
                      hintText: 'Your Location',
                    ),
                  ),
                ),
                ElevatedButton(
                  style: elevatedButtonStyle,
                  onPressed: () {
                    String yourLocation = customNameController.text.toString();
                    print(yourLocation);
                    Navigator.pushNamed(context, OverviewScreen.id);
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
        ),
      ),
    );
  }
}
