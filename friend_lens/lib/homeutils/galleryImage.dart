import 'package:flutter/material.dart';
import 'package:friend_lens/constants.dart';

class GalleryImage extends StatelessWidget {
  const GalleryImage({super.key, this.filePath});

  final String? filePath;

  @override
  Widget build(BuildContext context) {
    if (filePath != null) {
      return Container(
          width: 80,
          height: 80,
          child: Image.asset(filePath!, fit: BoxFit.cover));
    } else {
      return Container(
          width: 80,
          height: 80,
          color: GRAY,
          margin: const EdgeInsets.all(2.0),
          child: Center(child: Text("No Image")));
    }
  }
}
