import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:animator/animator.dart';

class HeartAnimation extends StatefulWidget {
  @override
  _HeartAnimationState createState() => _HeartAnimationState();
}

class _HeartAnimationState extends State<HeartAnimation> {
  @override
  Widget build(BuildContext context) {
    double sWidth = MediaQuery.of(context).size.width;
    return Container(
      height: sWidth / 2.7,
      width: sWidth / 2.7,
      child: Animator<double>(
        cycles: 0,
        curve: Curves.elasticIn,
        tween: Tween<double>(begin: 25.0, end: 20.0),
        duration: Duration(microseconds: 1000000),
        builder: (context, animatorstate, child) => Icon(
          Icons.favorite,
          color: Colors.red,
          size: animatorstate.value * 5,
        ),
      ),
    );
  }
}
