// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class Manual_Calculator_Button extends StatelessWidget {
  Manual_Calculator_Button(
      {required this.title, required this.colour, required this.onPress});
  final String title;
  final Color colour;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: InkWell(
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colour,
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          onTap: onPress,
        ),
      ),
    );
  }
}
