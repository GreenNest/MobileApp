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
        backgroundColor: Color(0xFF386641),
        // leading: const Icon(
        //   Icons.menu,
        //   color: Colors.white,
        // ),
        // leading: Builder(
        //   builder: (context) => IconButton(
        //     icon: Icon(Icons.menu),
        //     onPressed: () {
        //       ListTileStyle.drawer(Sidebar());
        //       //Scaffold.of(context).openDrawer(
        //       //);
        //     },
        //   ),
        // ),

        title: Text('Green Nest Plant Store',style: TextStyle(color: Colors.white,fontSize: 23),), centerTitle: true,
      ),
      body: homebody(),
      drawer: Sidebar(),




    );
  }
}
