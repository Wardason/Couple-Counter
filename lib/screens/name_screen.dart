import 'package:flutter/material.dart';
import 'package:couple_counter/constants.dart';
import 'package:couple_counter/components/myTextfield.dart';

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
          fontSize: 17,
          fontWeight: FontWeight.bold,
          fontFamily: fontFamily,
          letterSpacing: 0.6,
        ),
      ),
    ],
  );
}

createAlertDialog(BuildContext context) {
  TextEditingController customName1Controller = TextEditingController();
  TextEditingController customName2Controller = TextEditingController();

  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          'Your names',
          style: TextStyle(
            fontSize: 28,
            fontFamily: fontFamily,
          ),
        ),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            MyTextField(
              hint: 'The name of your love',
              controller: customName1Controller,
            ),
            MyTextField(
              hint: 'You',
              controller: customName2Controller,
            ),
          ],
        ),
        actions: <Widget>[
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                shadowColor: Colors.black,
                fixedSize: Size(95, 16),
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                textStyle: TextStyle(
                  fontSize: 16,
                ),
              ),
              child: Text(
                'Confirm',
                style: TextStyle(fontFamily: fontFamily),
              ),
              onPressed: () {
                String name1 = customName1Controller.text.toString();
                String name2 = customName2Controller.text.toString();
                print('$name1 + $name2');
              })
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      );
    },
  );
}

class _NameScreenState extends State<NameScreen> {
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
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                    fontFamily: fontFamily,
                  ),
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
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    textStyle: TextStyle(
                      fontSize: 25,
                      letterSpacing: 0.5,
                    ),
                  ),
                  onPressed: () {
                    createAlertDialog(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Your names',
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
