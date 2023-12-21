import 'package:flutter/material.dart';
import 'package:testing_app/gradient_container.dart';


void main() {
  runApp(
     MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        body: GradientContainer.nightlife()
      ),
    ),
  );
}

