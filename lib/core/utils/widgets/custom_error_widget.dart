import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/styles.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      message,
      style: Styles.textStyle18,
    ));
  }
}
