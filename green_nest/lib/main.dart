import 'package:flutter/material.dart';
import 'package:green_nest/screens/Leave/Components/Sidebar_staff.dart';

import 'package:green_nest/screens/Leave/Leave.dart';


import 'package:green_nest/screens/deliveryperson/Delivery_person_homepage.dart';
import 'package:green_nest/screens/order/order.dart';
import 'package:green_nest/screens/welcome/welcome.dart';

import 'package:green_nest/Signin.dart';
import 'package:green_nest/Signup.dart';


import 'package:green_nest/screens/Orderhistory/Orderhistory.dart';

import 'package:green_nest/screens/home/home.dart';
import 'package:green_nest/screens/product/SelectProduct.dart';

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

      //view to customer part
      home: Welcome(),

      //view to Deliveryperson part
      //home: Deliveryperson(),

      //view to employee part
      //home: Leave(),





    );
  }
}
