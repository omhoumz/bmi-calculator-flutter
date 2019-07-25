import 'package:flutter/material.dart';

import 'package:bmi_calculator/constants.dart';

class ActionButton extends StatelessWidget {
  ActionButton({@required this.onTap, @required this.label});

  final Function onTap;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
          label,
          style: kLargeButtonTextStyle,
        )),
        margin: EdgeInsets.only(top: 8.0),
        padding: EdgeInsets.only(bottom: 20.0),
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
