import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int _leftDiceNumber = 1;
  int _rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                padding: EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 16.0,
                ),
                child: Image.asset('images/dice$_leftDiceNumber.png'),
                onPressed: () {
                  setState(() {
                    _leftDiceNumber = getRandomNumber();
                  });
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                padding: EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 16.0,
                ),
                child: Image.asset('images/dice$_rightDiceNumber.png'),
                onPressed: () {
                  setState(() {
                    _rightDiceNumber = getRandomNumber();
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  int getRandomNumber() {
    return Random().nextInt(6) + 1;
  }
}
