import 'package:flutter/material.dart';
import 'contact.dart';

class ContactsCard extends StatelessWidget {
  const ContactsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Contact(), Contact(), Contact(), Contact()]),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Contact(), Contact(), Contact(), Contact()])
      ],
    );
  }
}
