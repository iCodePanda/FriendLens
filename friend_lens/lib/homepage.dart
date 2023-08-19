import 'package:flutter/material.dart';
import 'package:friend_lens/utils/contactsCard.dart';
import 'package:friend_lens/utils/galleryTiles.dart';
import 'package:friend_lens/utils/receiveButton.dart';
import 'constants.dart';
import './utils/headerText.dart';
import 'utils/galleryImage.dart';
import './utils/contact.dart';
import 'utils/sendButton.dart';

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
              Align(alignment: Alignment.center, child: GalleryTiles()),
              HeaderText(text: "Recent Contacts"),
              ContactsCard(),
              SendButton(onPressed: _onSend, title: "Send"),
              ReceiveButton(onPressed: _onReceive, title: "Receive")
            ]));
  }
}
