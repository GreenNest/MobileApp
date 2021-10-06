import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  // double? width, height, fontSize;
  String title;
  Color bgColor, textColor;
  final VoidCallback callback;
  bool isText;
  double textSize;
  double radius;
  double vMargin;

  CustomButton({
    @required this.title,
    @required this.textColor,
    @required this.callback,
    @required this.isText,
    this.bgColor,
    this.textSize,
    this.radius,
    this.vMargin,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(title),
      style: TextButton.styleFrom(
          padding: (isText)
              ? EdgeInsets.all(0.0)
              : EdgeInsets.symmetric(horizontal: 4, vertical: vMargin ?? 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? 50.0),
          ),
          primary: textColor,
          backgroundColor: bgColor ?? Colors.transparent,
          textStyle: TextStyle(fontSize: textSize ?? 15)),
      onPressed: callback,
    );
  }
}
