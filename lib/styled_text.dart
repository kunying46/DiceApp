import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text,{super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 28, color: Colors.white),
      ),
    );
  }
}