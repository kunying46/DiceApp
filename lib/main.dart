import 'package:flutter/material.dart';
import 'package:myapp/dice_rolloer.dart';


// Suggested code may be subject to a license. Learn more: ~LicenseLog:1709311364.
 
var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;
 
 
 
class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: startAlignment,
              end: endAlignment,
              colors: const [
            Color.fromARGB(255, 184, 74, 204),
            Color.fromARGB(255, 103, 58, 183)
          ])),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
 
 
 
 
 