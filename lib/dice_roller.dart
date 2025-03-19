import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget
{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState()
  {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>
{
  var activeDiceImage = 'assets/images/dice-six-faces-1.png';

  void rollDice()
  {
    var number = randomizer.nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'assets/images/dice-six-faces-$number.png';
    });
  }

  @override
  Widget build(context)
  {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
            activeDiceImage,
            width: 200
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.black,
            textStyle: const TextStyle(fontSize: 40),
          ),
          child:  const Text('Roll dice'),
        )
      ],
    );
  }
}