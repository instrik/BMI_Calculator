import 'package:Bmi/screens/input_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:Bmi/components/manual_calculator_button.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String userInput = '';
  String answer = '';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: InkWell(
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return InputPage();
                },
              ),
            );
          },
        ),
        title: Center(
          child: Text('Manual Calculator        '),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          userInput,
                          // userInput.toString(),
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        answer.toString(),
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  verticalDirection: VerticalDirection.up,
                  children: [
                    Row(
                      children: [
                        Manual_Calculator_Button(
                          title: 'AC',
                          colour: Colors.grey,
                          // colour: Color(0xFFFFA00A),
                          // colour: Color(0xFFA5A5A5),
                          onPress: () {
                            userInput = '';
                            answer = '';
                            setState(() {});
                          },
                        ),
                        Manual_Calculator_Button(
                          title: '+/-',
                          colour: Colors.grey,
                          onPress: () {
                            userInput += '+/-';
                            setState(() {});
                          },
                        ),
                        Manual_Calculator_Button(
                          title: '%',
                          colour: Colors.grey,
                          onPress: () {
                            userInput += '%';
                            setState(() {});
                          },
                        ),
                        Manual_Calculator_Button(
                          title: '/',
                          colour: Colors.orange,
                          onPress: () {
                            userInput += '/';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Manual_Calculator_Button(
                          title: '7',
                          colour: Colors.grey,
                          onPress: () {
                            userInput += '7';
                            setState(() {});
                          },
                        ),
                        Manual_Calculator_Button(
                          title: '8',
                          colour: Colors.grey,
                          onPress: () {
                            userInput += '8';
                            setState(() {});
                          },
                        ),
                        Manual_Calculator_Button(
                          title: '9',
                          colour: Colors.grey,
                          onPress: () {
                            userInput += '9';
                            setState(() {});
                          },
                        ),
                        Manual_Calculator_Button(
                          title: 'x',
                          colour: Colors.orange,
                          onPress: () {
                            userInput += 'x';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Manual_Calculator_Button(
                          title: '4',
                          colour: Colors.grey,
                          onPress: () {
                            userInput += '4';
                            setState(() {});
                          },
                        ),
                        Manual_Calculator_Button(
                          title: '5',
                          colour: Colors.grey,
                          onPress: () {
                            userInput += '5';
                            setState(() {});
                          },
                        ),
                        Manual_Calculator_Button(
                          title: '6',
                          colour: Colors.grey,
                          onPress: () {
                            userInput += '6';
                            setState(() {});
                          },
                        ),
                        Manual_Calculator_Button(
                          title: '-',
                          colour: Colors.orange,
                          onPress: () {
                            userInput += '-';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Manual_Calculator_Button(
                          title: '1',
                          colour: Colors.grey,
                          onPress: () {
                            userInput += '1';
                            setState(() {});
                          },
                        ),
                        Manual_Calculator_Button(
                          title: '2',
                          colour: Colors.grey,
                          onPress: () {
                            userInput += '2';
                            setState(() {});
                          },
                        ),
                        Manual_Calculator_Button(
                          title: '3',
                          colour: Colors.grey,
                          onPress: () {
                            userInput += '3';
                            setState(() {});
                          },
                        ),
                        Manual_Calculator_Button(
                          title: '+',
                          colour: Colors.orange,
                          onPress: () {
                            userInput += '+';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Manual_Calculator_Button(
                          title: '0',
                          colour: Colors.grey,
                          onPress: () {
                            userInput += '0';
                            setState(() {});
                          },
                        ),
                        Manual_Calculator_Button(
                          title: '.',
                          colour: Colors.grey,
                          onPress: () {
                            userInput += '.';
                            setState(() {});
                          },
                        ),
                        Manual_Calculator_Button(
                          title: 'Del',
                          colour: Colors.grey,
                          onPress: () {
                            userInput =
                                userInput.substring(0, userInput.length - 1);
                          },
                        ),
                        Manual_Calculator_Button(
                          title: '=',
                          colour: Colors.blue,
                          onPress: () {
                            setState(() {
                              equalPress();
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
