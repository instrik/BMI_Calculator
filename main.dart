// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'screens/input_page.dart';

//trial comment

void main() {
  runApp(Bmi());
}

class Bmi extends StatefulWidget {
  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}

















































