import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: BallPage()));

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Ask Me Anything'), backgroundColor: Colors.blueGrey),
      body: Ball(),
      backgroundColor: Colors.blue,
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  void changeBallNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
      print('ball number $ballNumber');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          child: Image.asset("images/ball$ballNumber.png"),
          onPressed: () {
            changeBallNumber();
          }),
    );
  }
}
