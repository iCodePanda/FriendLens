import 'package:flutter/material.dart';
import 'package:friend_lens/constants.dart';
import 'package:table_calendar/table_calendar.dart';

class SelectTimeFrame extends StatefulWidget {
  const SelectTimeFrame({super.key});

  @override
  State<SelectTimeFrame> createState() => _SelectTimeFrameState();
}

class _SelectTimeFrameState extends State<SelectTimeFrame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Home",
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)),
            backgroundColor: CYAN),
        body: Column(
          children: <Widget>[Placeholder(), Placeholder()],
        ));
  }
}
