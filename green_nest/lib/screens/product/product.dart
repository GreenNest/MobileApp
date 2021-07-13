import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  // const Product({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/image7.jpg',
            ),
            alignment: Alignment.topCenter,
          ),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(25.0),
          ),
        ),
      ),
    );
  }
}
