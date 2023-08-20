import 'package:flutter/material.dart';
import 'package:friend_lens/constants.dart';

class Sent extends StatelessWidget {
  const Sent({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Material(
        type: MaterialType.transparency,
        child: Container(
            height: screenHeight,
            width: screenWidth,
            color: CYAN,
            child: const Center(
                child: Text("SENT!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 80)))));
  }
}
