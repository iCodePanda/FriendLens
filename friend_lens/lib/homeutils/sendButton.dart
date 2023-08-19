import 'package:flutter/material.dart';
import 'package:friend_lens/constants.dart';

class SendButton extends StatelessWidget {
  const SendButton({super.key, required this.onPressed, required this.title});

  final VoidCallback onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 15.0),
        child: ElevatedButton(
            onPressed: onPressed,
            child: Text(title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                backgroundColor: CYAN,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)))));
  }
}
