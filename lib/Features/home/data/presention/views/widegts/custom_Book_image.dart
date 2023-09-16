import 'package:flutter/material.dart';

import '../../../../../../core/utils/assets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.cyanAccent,
          image: const DecorationImage(
            image: AssetImage(Assets.imagesTestImage),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
