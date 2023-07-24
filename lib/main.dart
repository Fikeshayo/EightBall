import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(

        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
        title: const Text('Eight Ball Game'),
          backgroundColor: Colors.black,
          shadowColor: Colors.white,
        ),
        body: const EightBall(),
      ),
    ),
  );
}

class EightBall extends StatefulWidget {
  const EightBall({super.key});

  @override
  State<EightBall> createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {

    int BallChange = 1;

    BallChanger(){
      setState(() {
        BallChange = Random().nextInt(6) + 1;
      });
    }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Image.asset('Images/ball$BallChange.png'),
          ),
          TextButton(
            onPressed:(){
              BallChanger();
              },
            child: const Icon(Icons.change_circle_outlined, color: Colors.orange, size: 100,),
          ),
        ],
      ),
    );
  }
}
