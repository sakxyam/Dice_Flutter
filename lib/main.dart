import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Dicee'),
          ),
          backgroundColor: Colors.red,
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
  @override
  int leftDie = 1;
  int rightDie = 1;
  void change() {
    setState(() {
      rightDie = Random().nextInt(6) + 1;
      leftDie = Random().nextInt(6) + 1;
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                change();
              },
              child: Image.asset('images/dice$leftDie.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                change();
              },
              child: Image.asset('images/dice$rightDie.png'),
            ),
          ),
        ],
      ),
    );
  }
}
