import 'package:flutter/material.dart';
import 'noImage.dart';

class GalleryTiles extends StatelessWidget {
  const GalleryTiles({super.key});
  //List topFourImages = [];
  //List bottomFourImages = [];

  @override
  Widget build(BuildContext context) {
    //realign this later
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(children: <Widget>[
          NoImageDefaultBox(),
          NoImageDefaultBox(),
          NoImageDefaultBox(),
          NoImageDefaultBox()
        ]),
        Row(children: <Widget>[
          NoImageDefaultBox(),
          NoImageDefaultBox(),
          NoImageDefaultBox(),
          NoImageDefaultBox()
        ])
      ],
    );
  }
}
