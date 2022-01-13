import 'package:flutter/material.dart';
import 'screens/all_imports.dart';

void main() {
  runApp(CoupleCounter());
}

class CoupleCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: NameScreen.id,
      routes: {
        NameScreen.id: (context) => NameScreen(),
        DateScreen.id: (context) => DateScreen(),
        LocationScreen.id: (context) => LocationScreen(),
        OverviewScreen.id: (context) => OverviewScreen(),
      },
    );
  }
}
