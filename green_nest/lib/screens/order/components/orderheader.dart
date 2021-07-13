import 'package:flutter/material.dart';
import 'package:green_nest/screens/Orderhistory/Orderhistory.dart';
import 'package:green_nest/screens/home/components/sidebar.dart';

class orderheader extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green[800],
      // title: Image.asset("assets/logo.png", height: 50,),
      title: Text('Order', style: TextStyle(color: Colors.white) ,),
      leading: GestureDetector(
        onTap: (){
          //Navigator.push(context, MaterialPageRoute(builder: (context)=>Orderhistory()));
          Navigator.pop(context, MaterialPageRoute(builder: (context)=>Orderhistory()));
        },
        child: Icon(
          Icons.arrow_back,
          color: Colors.white,),
      ),
      centerTitle: true,
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.add_alert_sharp,color: Colors.white,))
      ],
    );
  }
}