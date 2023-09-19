import 'package:flutter/material.dart';
import 'package:my_bookly/Features/home/data/models/BookModel.dart';

import '../../../../../../core/utils/assets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key, required this.urlImage,
  });
final String urlImage;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.cyanAccent,
          image:  DecorationImage(
            image:NetworkImage(urlImage),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
