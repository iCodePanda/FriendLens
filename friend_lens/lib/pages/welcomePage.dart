import 'package:flutter/material.dart';
import 'dart:io';

import 'package:friend_lens/constants.dart';
import 'package:friend_lens/homeutils/headerText.dart';
import 'package:friend_lens/homeutils/sendButton.dart';
import 'package:friend_lens/pages/homepage.dart';

import '../welcomeUtils/header1.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  List<String> usernameArray = [];
  List passwordArray = [];
  String? _username;
  String? _password;

  Map usernamesAndPasswords = {
    "jane3@gmail.com": "asdfg123",
    "d22lu": "12345678"
  };
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  //FIX THIS!!!!!
  Future<void> readFile() async {
    File usernames = File('usernames.txt');
    usernameArray = await usernames.readAsLines();
    print(usernameArray);
  }

  void _onSend() {
    if (_formKey.currentState!.validate()) {
      _username = userNameController.text;
      _password = passwordController.text;

      if (usernamesAndPasswords[_username] == null) {
        usernamesAndPasswords[_username] = _password;
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Homepage()));
      } else {
        if (_password != usernamesAndPasswords[_username]) {
          print('Incorrect password'); //just for testing
        } else {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Homepage()));
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: CYAN,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end, // Center vertically
          children: <Widget>[
            Container(
                height: 200,
                width: 200,
                child: Image.asset('assets/images/FriendLenslogo.png',
                    fit: BoxFit.cover)),
            Container(
              height: MediaQuery.of(context).size.height / 1.6,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start, // Center vertically
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Greeting(text: "Welcome to FriendLens!"),
                  Text("Sign in or sign up",
                      style:
                          TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
                  Form(
                    key: _formKey,
                    child: Column(children: <Widget>[
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                        child: TextFormField(
                            controller: userNameController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Email'),
                            validator: (username) {
                              if (username == null || username.isEmpty) {
                                return 'Please enter a value';
                              } else {
                                return null;
                              }
                            }),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                        child: TextFormField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Password'),
                          validator: (password) {
                            if (password == null || password.isEmpty) {
                              return 'Please enter a password';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      SendButton(onPressed: _onSend, title: "Log in")
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
