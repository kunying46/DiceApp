import 'dart:math';
import 'package:flutter/material.dart';
import 'package:myapp/styled_text.dart';


class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/Images/dice-01.png';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            activeDiceImage,
            width: 200,
            height: 200,
          ),
          TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
              ),
              child: const StyledText("Roll Dice"))
        ]);
  }

  void rollDice() {
    setState(() {
      var diceRoll = Random().nextInt(6)+1;
      activeDiceImage = 'assets/Images/$diceRoll.png';
    });
    print("Dice is changing");
  }
}