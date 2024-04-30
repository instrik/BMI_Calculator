// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:Bmi/constants.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onPressed});
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        onPressed();
      },
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 36,
        height: 36,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      child: Icon(icon),
    );
  }
}
