import 'package:flutter/material.dart';
import 'package:green_nest/Signin.dart';
import 'package:green_nest/screens/Leave/Leave.dart';
import 'package:green_nest/screens/Orderhistory/Orderhistory.dart';
import 'package:green_nest/screens/cart/cart.dart';
import 'package:green_nest/screens/home/home.dart';

class ESidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xFF386641),
        padding: EdgeInsets.zero,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Hiruni',
                style: TextStyle(
                    color: Color(0xFF386641)
                  // backgroundColor: Colors.green,
                ),
              ),
              accountEmail: Text(
                'Hiruni@gmail.com',
                style: TextStyle(
                    color: Color(0xFF386641)
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/employee.jpeg"),
                // child: Image.asset(
                //   'assets/image6.jpg',
                //  fit:BoxFit.fitHeight ,
              ),
            ),

            //),
            ListTile(
              leading: Icon(Icons.home, color: Color(0xFFF2E8CF), size: 35,),
              title: Text('Home', style: TextStyle(color: Color(0xFFF2E8CF)),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Leave()));
              },
            ),
            ListTile(
              leading: Icon(Icons.assignment, color: Color(0xFFF2E8CF), size: 35,),
              title: Text('Leave Statics', style: TextStyle(color: Color(0xFFF2E8CF)),),
              onTap: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>Orderhistory()));
              },
            ),
            ListTile(
              leading: Icon(Icons.monetization_on, color: Color(0xFFF2E8CF), size: 35,),
              title: Text('Salary View', style: TextStyle(color: Color(0xFFF2E8CF)),),
              onTap: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>Orderhistory()));
              },
            ),
            Divider(height: 5,color: Colors.yellow,),
            ListTile(
              leading: Icon(Icons.logout, color: Color(0xFFF2E8CF), size: 35,),
              title: Text('Logout', style: TextStyle(color: Color(0xFFF2E8CF)),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Signin()));
              },
            ),

          ],
        ),
      ),
    );
  }
}
