import 'package:flutter/material.dart';
import 'package:green_nest/screens/home/home.dart';
import 'package:green_nest/screens/welcome/welcome.dart';
import 'package:green_nest/screens/product/productList.dart';
import 'package:green_nest/screens/product/product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        //primarySwatch: Colors.white,
      ),
      home: ProductList(),
    );
  }
}
