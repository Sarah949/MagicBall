import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[700],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: const Text('Ask Me Anything'),
        ),
        body: const MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: IconButton(
                onPressed: () {
                  setState(() {
                    ballNumber = Random().nextInt(4) + 1;
                  });
                },
                icon: Image.asset('images/ball$ballNumber.png')),
          ),
        ],
      ),
    );
  }
}
