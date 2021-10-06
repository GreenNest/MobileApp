import 'dart:async';

import 'package:flutter/material.dart';
import 'package:green_nest/config/theme/colorPalette.dart';

class SplachScreen extends StatefulWidget {
  @override
  _SplachScreenState createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  double _height = 250;
  double _width = 250;
  double _opacity = 1;

  @override
  void initState() {
    Timer(Duration(milliseconds: 2300), () {
      setState(() {
        _height = 10;
        _width = 5;
        _opacity = 0;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.PRIMARY_COLOR,
      body: Center(
        child: AnimatedOpacity(
          duration: Duration(milliseconds: 600),
          opacity: _opacity,
          child: AnimatedContainer(
            child: Image.asset("assets/GreenNest.png"),
            duration: Duration(milliseconds: 650),
            height: _height,
            width: _width,
          ),
        ),
      ),
    );
  }
}
