import 'package:flutter/material.dart';
import 'package:friend_lens/homeutils/contactsCard.dart';
import 'package:friend_lens/homeutils/galleryTiles.dart';
import 'package:friend_lens/homeutils/receiveButton.dart';
import '../constants.dart';
import '../homeutils/headerText.dart';
import '../homeutils/galleryImage.dart';
import '../homeutils/contact.dart';
import '../homeutils/sendButton.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  void _onSend() {
    print("send");
  }

  void _onReceive() {
    print("receive");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home",
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)),
          backgroundColor: CYAN,
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              HeaderText(text: "Recent Gallery"),
              GalleryTiles(),
              HeaderText(text: "Recent Contacts"),
              ContactsCard(),
              Center(child: SendButton(onPressed: _onSend, title: "Send")),
              Center(
                  child: ReceiveButton(onPressed: _onReceive, title: "Receive"))
            ]));
  }
}
