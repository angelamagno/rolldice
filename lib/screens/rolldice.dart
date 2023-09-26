import 'dart:math';

import 'package:flutter/material.dart';

class RollDiceScreen extends StatefulWidget {
  const RollDiceScreen({super.key});

  @override
  State<RollDiceScreen> createState() => _RollDiceScreenState();
}

class _RollDiceScreenState extends State<RollDiceScreen> {
  @override
  int activeDiceFace = 6;
  List<String> diceImage = [
    'https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Dice-12.svg/800px-Dice-12.svg.png',
    'https://commons.wikimedia.org/wiki/Category:Dice_faces#/media/File:Alea_2.png',
    'https://commons.wikimedia.org/wiki/Category:Dice_faces#/media/File:Alea_3.png',
    'https://commons.wikimedia.org/wiki/Category:Dice_faces#/media/File:Alea_4.png',
    'https://commons.wikimedia.org/wiki/Category:Dice_faces#/media/File:Alea_5.png',
    'https://commons.wikimedia.org/wiki/Category:Dice_faces#/media/File:Alea_6.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Dice-12.svg/800px-Dice-12.svg.png',
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.blue,
            Colors.purple,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        )),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Roll Dice',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Image.network(
                diceImage[activeDiceFace],
                color: Colors.amber.shade800,
                width: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  var ranNum = Random().nextInt(6);
                  setState(() {
                    activeDiceFace = ranNum;
                  });
                  print('button pressed');
                },
                child: Text(
                  'Roll!',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
