import 'package:flutter/material.dart';


class StyleText extends StatelessWidget {
  const StyleText(this.textValue, {super.key});
  final String textValue;

  @override
  Widget build(context) {
    return Text(
      textValue,
      style: const TextStyle(color: Colors.white, fontSize: 28),
    );
  }
}
