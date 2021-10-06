import 'package:flutter/material.dart';
import 'package:green_nest/config/theme/colorPalette.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.PRIMARY_COLOR,
      body: Center(
          child: Container(
        child: CircularProgressIndicator(),
      )),
    );
  }
}
