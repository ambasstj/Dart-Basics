import 'dart:math';

import 'package:flutter/material.dart';

final random = Random();
class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }

}

class _DiceRollerState extends State<DiceRoller>{

  var activeDice = 4;
  var activeDice2 =4;


  void rollDice(){
    setState(() {
     activeDice = random.nextInt(6)+1;
     activeDice2 = random.nextInt(6)+1;
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Image.asset("assets/images/dice-$activeDice.png", width: 200),
              Image.asset("assets/images/dice-$activeDice2.png", width: 200)
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: ElevatedButton(onPressed: rollDice,
                child: const Text("Roll",style: TextStyle(color: Colors.deepOrange,
                    fontSize: 30),)),
          )
        ]
    );
  }
}