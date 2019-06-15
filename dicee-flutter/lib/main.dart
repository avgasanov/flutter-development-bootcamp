import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePageStateful(),
      ),
    ),
  );
}

class DicePageStateful extends StatefulWidget {
  @override
  _DicePageStatefulState createState() => _DicePageStatefulState();
}

class _DicePageStatefulState extends State<DicePageStateful> {
  int leftDice = 1;
  int rightDice = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset("images/dice$leftDice.png"),
              onPressed: updateState,
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset("images/dice$rightDice.png"),
              onPressed: updateState,
            ),
          )
        ],
      ),
    );
  }

  void updateState() {
    setState(() => {
      leftDice = Random().nextInt(6) + 1,
      rightDice = Random().nextInt(6) + 1
    });
  }
}

