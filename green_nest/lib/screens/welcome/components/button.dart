
import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  final String text;
  final Color color;
  final Color textColor;
  final Function press;
  final Color borderColor;


  const Button({
    Key key,
    this.text,
    this.color,
    this.textColor,
    this.press,
    this.borderColor}):super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      width: size.width * 0.8,
      child: RaisedButton(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
        color: color,
        onPressed: press,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(
            color: borderColor,
            width: 2.0
          )
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20.0,
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
