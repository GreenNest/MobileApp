import 'package:flutter/material.dart';

class Headerbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green[900],
      // title: Image.asset("assets/logo.png", height: 50,),
      title: Text('Order History', style: TextStyle(color: Colors.white) ,),
      leading: Icon(Icons.view_headline, color: Colors.white,),
      centerTitle: true,
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.add_alert_sharp,color: Colors.white,))
      ],
    );
  }
}