import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({Key? key}) : super(key: key);

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var diceNum = 1;

  void rollDice() {
    setState(() => diceNum = randomizer.nextInt(6) + 1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$diceNum.png",
          width: 200,
        ),
        const SizedBox(height: 20),
        OutlinedButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 20),
          ),
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}
