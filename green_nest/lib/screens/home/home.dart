import 'package:flutter/material.dart';
import 'package:green_nest/screens/home/components/sidebar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('hello'),),
      drawer: Sidebar(),

    );
  }
}
