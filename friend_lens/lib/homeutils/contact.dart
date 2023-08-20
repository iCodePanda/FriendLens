import 'package:flutter/material.dart';
import 'package:friend_lens/constants.dart';

class Contact extends StatelessWidget {
  const Contact(
      {super.key,
      this.name = "unknown",
      this.pathToPhoto}); //check if this conditional works

  final String name;
  final String? pathToPhoto;

  @override
  Widget build(BuildContext context) {
    if (pathToPhoto == null) {
      return Container(
          margin: const EdgeInsets.only(top: 2, bottom: 2, left: 3, right: 3),
          child: Column(children: <Widget>[
            Icon(Icons.account_circle, size: 80.0, color: GRAY),
            Text(name)
          ]));
    } else {
      return Container(
          margin: const EdgeInsets.only(top: 2, bottom: 2, left: 3, right: 3),
          child: Column(children: <Widget>[
            Container(
              height: 80.0,
              width: 80.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(pathToPhoto!), fit: BoxFit.cover)),
            ),
            Text(name)
          ]));
    }
  }
}
