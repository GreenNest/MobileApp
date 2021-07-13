import 'package:flutter/material.dart';
import 'package:green_nest/screens/home/components/sidebar.dart';
import 'package:green_nest/screens/order/components/ordercard.dart';
import 'package:green_nest/screens/order/components/orderheader.dart';

class Order extends StatefulWidget {

  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: orderheader(),
      body: ordercard(),
    );
  }
}
