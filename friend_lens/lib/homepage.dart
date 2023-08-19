import 'package:flutter/material.dart';
import 'package:friend_lens/utils/contactsCard.dart';
import 'package:friend_lens/utils/galleryTiles.dart';
import 'constants.dart';
import './utils/headerText.dart';
import 'utils/galleryImage.dart';
import './utils/contact.dart';

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
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              HeaderText(text: "Recent Gallery"),
              Align(alignment: Alignment.center, child: GalleryTiles()),
              HeaderText(text: "Recent Contacts"),
              ContactsCard()
            ]));
  }
}
