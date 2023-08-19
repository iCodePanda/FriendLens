import 'package:flutter/material.dart';
import 'galleryImage.dart';

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
          GalleryImage(),
          GalleryImage(),
          GalleryImage(),
          GalleryImage()
        ]),
        Row(children: <Widget>[
          GalleryImage(),
          GalleryImage(),
          GalleryImage(),
          GalleryImage()
        ])
      ],
    );
  }
}
