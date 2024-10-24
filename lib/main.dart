import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left = 1, right = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          left = 1 + Random().nextInt(6);
                          right = 1 + Random().nextInt(6);
                        });
                      },
                      child: Image.asset('images/dice$left.png')),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          left = 1 + Random().nextInt(6);
                          right = 1 + Random().nextInt(6);
                        });
                      },
                      child: Image.asset('images/dice$right.png')),
                ),
              ),
            ],
          ),
          const SizedBox(
              height: 20
          ),
          Text(
            'The total roll is ${left + right}',
            style: const TextStyle(
                fontSize: 30.0,
                color: Colors.black
            ),
          ),
          const SizedBox(
              height: 10
          ),
          Text(
                () {
              if (left > right) {
                return 'Left dice rolls higher';
              } else if (right > left) {
                return 'Right dice rolls higher';
              } else {
                return 'Both dice rolls are equal';
              }
            }(),
            style: const TextStyle(
                fontSize: 30.0,
                color: Colors.
                black
            ),
          ),
          const SizedBox(
              height: 20
          ),
          TextButton(
            onPressed: () {
              setState(() {
                left = 1 + Random().nextInt(6);
                right = 1 + Random().nextInt(6);
              });
            },
            child: const Text(
              'Roll Again',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white
              ),
            ),
          ),
        ],
      ),
    );
  }
}