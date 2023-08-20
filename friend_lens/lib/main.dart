import 'package:friend_lens/pages/galleryAccess.dart';
import 'package:flutter/material.dart';
import 'package:friend_lens/pages/sent.dart';
import 'package:friend_lens/pages/welcomePage.dart';
import 'constants.dart';
import 'pages/homepage.dart';
import 'package:friend_lens/calendarUtils/calendarScreen.dart';

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
      home: WelcomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
