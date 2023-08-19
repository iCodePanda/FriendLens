import 'package:flutter/material.dart';
import 'constants.dart';
import './utils/headerText.dart';
import './utils/noImage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home",
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)),
          backgroundColor: CYAN,
        ),
        body: Column(children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 25.0, left: 16.0),
            height: 50,
            child: const HeaderText(text: "Recent Gallery"),
          ),
          NoImageDefaultBox()
        ]));
  }
}
