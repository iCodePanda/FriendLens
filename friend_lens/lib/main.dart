import 'dart:io';
import 'package:friend_lens/galleryAccess.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'homepage.dart';

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
      home: const Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
