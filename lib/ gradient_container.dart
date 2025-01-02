import 'package:flutter/material.dart';
import 'package:myapp/styled_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;
var colors = [Colors.amber, Colors.yellow, Colors.black];
var activeDiceImage = 'assets/Images/dice-1.png';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
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
        ]),
      ),
    );
  }

  void rollDice() {
    activeDiceImage = 'assets/Images/dice-6.png';
    print("Dice is changing");
  }
}