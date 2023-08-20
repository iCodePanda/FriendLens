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
      children: <Widget>[
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          GalleryImage(filePath: 'assets/images/Night1.jpg'),
          GalleryImage(filePath: "assets/images/where's Daniel.jpg"),
          GalleryImage(
            filePath: 'assets/images/all four of us.jpg',
          ),
          GalleryImage(
              filePath: "assets/images/all four but we're sitting on desks.jpg")
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          GalleryImage(),
          GalleryImage(),
          GalleryImage(),
          GalleryImage()
        ])
      ],
    );
  }
}
