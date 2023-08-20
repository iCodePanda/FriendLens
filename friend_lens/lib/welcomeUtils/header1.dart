import 'package:flutter/material.dart';

class Greeting extends StatelessWidget {
  const Greeting({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0, bottom: 25.0),
      height: 35,
      child: Text(text,
          style: const TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
    );
  }
}
