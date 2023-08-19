import 'dart:io';
import 'package:friend_lens/pages/galleryAccess.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'pages/homepage.dart';
import 'package:friend_lens/calendarUtils/calendarScreen';

void main() {
  //main method that runs the app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //root widget
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: CYAN),
      home: TableBasicsExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}
