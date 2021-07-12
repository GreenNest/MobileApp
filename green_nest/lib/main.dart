import 'package:flutter/material.dart';
import 'package:green_nest/screens/deliveryperson/Delivery_person_homepage.dart';


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
      home: DeOngoning(),
    );
  }
}
