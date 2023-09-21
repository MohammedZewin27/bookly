import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../constans/constants.dart';
import '../../../../../../core/utils/widgets/custom_button.dart';
import '../../../models/BookModel.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});

  final Items bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
              child: CustomButton(
            text: 'Free',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            topLeft: 12,
            bottomLeft: 12,
          )),
          Expanded(
              child: CustomButton(
            onTap: () async {
              await launchUrlPreview(url: bookModel.volumeInfo?.previewLink??'');
            },
            text: ' Preview',
            backgroundColor: kButtonColor,
            textColor: Colors.white,
            topRight: 12,
            bottomRight: 12,
            fontSize: 18,
          )),
        ],
      ),
    );
  }
}

Future<void> launchUrlPreview({required String url}) async {
  Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri,);
  }

}
