import 'package:flutter/material.dart';
import 'package:friend_lens/constants.dart';

class ReceiveButton extends StatelessWidget {
  const ReceiveButton(
      {super.key, required this.onPressed, required this.title});

  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            side: BorderSide(
              width: 1, // the thickness
              color: CYAN, // the color of the border
            ),
            padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 15),
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        child: Text(title,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
      ),
    );
  }
}
