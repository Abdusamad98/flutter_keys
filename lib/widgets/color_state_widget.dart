import 'dart:math';

import 'package:flutter/material.dart';

class ColorStateWidget extends StatelessWidget {
  final String text;


  const ColorStateWidget({
    Key? key,
    required this.text,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Color  color = generateColor();
    return Container(
      color: color,
      width: 150,
      height: 150,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

}

Color generateColor() {
  final random = Random();

  return Color.fromARGB(
    255,
    random.nextInt(255),
    random.nextInt(255),
    random.nextInt(255),
  );
}
