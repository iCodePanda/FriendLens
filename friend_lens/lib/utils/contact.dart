import 'package:flutter/material.dart';
import 'package:friend_lens/constants.dart';

class Contact extends StatelessWidget {
  const Contact(
      {super.key, this.name = "unknown"}); //check if this conditional works

  final String name;

  @override
  Widget build(BuildContext context) {
    if (name == "unknown") {
      return Container(
          margin: const EdgeInsets.all(5),
          child: Column(children: <Widget>[
            Icon(Icons.account_circle, size: 80.0, color: GRAY),
            Text(name)
          ]));
    } else {
      return const Placeholder();
      //If there is a person, provided that the api works
    }
  }
}
