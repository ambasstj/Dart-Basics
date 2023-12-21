import 'package:flutter/material.dart';
import 'package:testing_app/dice_roller.dart';
import 'package:testing_app/styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, {super.key});

  GradientContainer.sunshine({super.key}) :
        color1 = [Colors.yellow, Colors.deepOrangeAccent];
  GradientContainer.nightlife({super.key}) :
      color1 = [Colors.black38,Colors.black, Colors.indigoAccent];

  final List<Color> color1;

  @override
  Widget build(context) {
    return Container(
      decoration:  BoxDecoration(
          gradient: LinearGradient(colors: color1, begin: Alignment.topLeft, end: Alignment.bottomRight)),
      child: Center(
          child:DiceRoller()
      ),
    );
  }

}

