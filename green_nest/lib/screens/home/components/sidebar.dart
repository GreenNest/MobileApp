import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
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
                'chathurika',
                style: TextStyle(
                  color: Color(0xFFF2E8CF)
                ),
              ),
              accountEmail: Text(
                'chathurika@gmail.com',
                style: TextStyle(
                    color: Color(0xFFF2E8CF)
                ),
              ),
              currentAccountPicture: CircleAvatar(
                child: Image.asset(
                  'assets/image6.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Color(0xFFF2E8CF), size: 35,),
              title: Text('Home', style: TextStyle(color: Color(0xFFF2E8CF)),),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.add_shopping_cart, color: Color(0xFFF2E8CF), size: 35,),
              title: Text('Cart', style: TextStyle(color: Color(0xFFF2E8CF)),),
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }
}
