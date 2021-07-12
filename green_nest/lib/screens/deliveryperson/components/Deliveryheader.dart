import 'package:flutter/material.dart';

class Deliveryheader extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green[800],
      // title: Image.asset("assets/logo.png", height: 50,),
      title: Text('Orders', style: TextStyle(color: Colors.white) ,),
      leading: Icon(Icons.view_headline, color: Colors.white,),
      centerTitle: true,
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.add_alert_sharp,color: Colors.white,))
      ],
      bottom:TabBar(
        tabs: [
          Tab(icon: Icon(Icons.delivery_dining,color: Colors.white,)),
          Tab(icon: Icon(Icons.assignment_turned_in,color: Colors.white,)),
          Tab(icon: Icon(Icons.announcement,color: Colors.white,)),
        ],
      ) ,
    );
  }
}