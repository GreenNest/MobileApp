import 'package:flutter/material.dart';
import 'package:green_nest/screens/home/components/home_body.dart';
import 'package:green_nest/screens/home/components/sidebar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[700],
        title: Text('Green Nest Plant Store',style: TextStyle(color: Colors.white,fontSize: 23),), centerTitle: true,),
      drawer: Sidebar(),
      body: homebody(),


    );
  }
}
