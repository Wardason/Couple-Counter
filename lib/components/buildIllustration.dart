import 'package:flutter/material.dart';
import 'package:couple_counter/constants.dart';

class BuildIllustration extends StatelessWidget {
  late final AssetImage illustration;
  late final String illustrationDescription;

  BuildIllustration(
      {required this.illustration, required this.illustrationDescription});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image(
          image: illustration,
        ),
        Text(
          illustrationDescription,
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
}
