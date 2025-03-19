import 'package:flutter/material.dart';
import 'package:project/gradient_container.dart';

final List<Color> colors = [Colors.green, Colors.white];

void main() {
 runApp(
     MaterialApp(
       home: Scaffold(
         body: GradientContainer(colors),
         ),
       ),
 );
}

