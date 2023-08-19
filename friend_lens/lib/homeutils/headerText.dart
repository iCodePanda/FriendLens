import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25.0, left: 16.0),
      height: 35,
      child: Text(text,
          style: const TextStyle(
              fontFamily: "SFBold",
              fontSize: 18.0,
              fontWeight: FontWeight.bold)),
    );
  }
}
