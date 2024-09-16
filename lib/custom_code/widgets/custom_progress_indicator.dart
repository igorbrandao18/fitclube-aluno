// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:percent_indicator/linear_percent_indicator.dart';

class CustomProgressIndicator extends StatefulWidget {
  const CustomProgressIndicator({
    Key? key,
    this.width,
    this.height,
    required this.progressColor,
    required this.progressHeight,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Color progressColor;
  final double progressHeight;

  @override
  _CustomProgressIndicatorState createState() =>
      _CustomProgressIndicatorState();
}

class _CustomProgressIndicatorState extends State<CustomProgressIndicator> {
  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: -1,
      child: LinearPercentIndicator(
        percent: 1,
        width: widget.progressHeight,
        lineHeight: 12,
        animation: true,
        animateFromLastPercent: true,
        progressColor: widget.progressColor,
        backgroundColor: Color(0x33A6B1FF),
        barRadius: Radius.circular(15),
        padding: EdgeInsets.zero,
      ),
    );
  }
}
