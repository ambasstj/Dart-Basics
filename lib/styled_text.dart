import 'package:flutter/material.dart';


class StyledText extends StatelessWidget {
  final String message;

  const StyledText({super.key, required this.message});

  @override
  Widget build(context) {
    return Text(
      message,
      selectionColor: Colors.white,
      style: const
      TextStyle(
          fontSize: 30,
          color: Colors.white),
    );
  }

}