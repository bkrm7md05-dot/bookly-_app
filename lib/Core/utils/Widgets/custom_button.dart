import 'package:flutter/material.dart';
import 'package:project/Core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    required this.title,
    required this.backGroundColor,
    required this.txtColor,
    this.fontSize = 12,
    this.borderRadius = const BorderRadius.all(Radius.circular(15)),
    required this.onpressed,
  });

  final Function() onpressed;
  final String title;
  final Color backGroundColor;
  final Color txtColor;
  final BorderRadius borderRadius;
  final int fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: this.onpressed,

        style: TextButton.styleFrom(
          backgroundColor: this.backGroundColor,

          shape: RoundedRectangleBorder(borderRadius: this.borderRadius),
        ),

        child: Text(
          "$title",
          style: Styles.textStyle18.copyWith(
            color: this.txtColor,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
