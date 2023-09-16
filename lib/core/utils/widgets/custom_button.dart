import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.text,
    this.topLeft = 0,
    this.bottomLeft = 0,
    this.topRight = 0,
    this.bottomRight = 0,
    this.fontSize ,
  });

  final Color backgroundColor;
  final Color textColor;
  final String text;
  final double topLeft;
  final double bottomLeft;
  final double bottomRight;
  final double topRight;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(topLeft),
                    bottomLeft: Radius.circular(bottomLeft),
                    topRight: Radius.circular(topRight),
                    bottomRight: Radius.circular(bottomRight)),
              )),
          child: Text(
            text,
            style: Styles.textStyle20
                .copyWith(fontWeight: FontWeight.w900, color: textColor,
            fontSize: fontSize
            ),
          )),
    );
  }
}
