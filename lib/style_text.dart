import 'package:flutter/material.dart';

class StyleText extends StatelessWidget{
  const StyleText({super.key});

  @override
  Widget build(context){
    return const Text(
      'Hello World from a new widget!!',
      style: TextStyle(color: Colors.white, fontSize: 28),
    );
  }
}