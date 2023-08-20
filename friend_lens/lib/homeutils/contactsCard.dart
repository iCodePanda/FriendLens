import 'package:flutter/material.dart';
import 'contact.dart';

class ContactsCard extends StatelessWidget {
  const ContactsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Contact(
            name: "Jane",
            pathToPhoto: "assets/images/JaneWatcard.png",
          ),
          Contact(
            name: "Anish",
            pathToPhoto: "assets/images/AnishLinkedin.png",
          ),
          Contact(
            name: "Daniel",
            pathToPhoto: "assets/images/DanielWatcard.png",
          ),
          Contact(
            name: "Arsal",
            pathToPhoto: "assets/images/ArsalLinkedin.jpeg",
          )
        ]),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Contact(), Contact(), Contact(), Contact()])
      ],
    );
  }
}
