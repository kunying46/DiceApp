import 'package:flutter/material.dart';
import 'package:myapp/%20gradient_container.dart';


void main() {
  runApp(const MaterialApp(
    home: Scaffold(
        backgroundColor: Color.fromARGB(255, 197, 252, 252),
        body: GradientContainer()),
  ));
}