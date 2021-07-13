
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:green_nest/screens/Orderhistory/component/headernew.dart';
import 'package:green_nest/screens/home/components/sidebar.dart';
// import '../../../../../../MobileApp/green_nest/lib/screens/Orderhistory/component/orderbar.dart';
// import '../../../../../../MobileApp/green_nest/lib/screens/Orderhistory/component/headerbar.dart';
import 'component/headerbar.dart';
import 'component/orderbar.dart';


class Orderhistory extends StatefulWidget {


  @override
  _OrderhistoryState createState() => _OrderhistoryState();
}

class _OrderhistoryState extends State<Orderhistory> {
  Widget appbartitle= new Text('Order history',style: TextStyle(color: Colors.white),);
  Icon actionIcon = new Icon(Icons.search);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF386641),
        titleTextStyle: TextStyle(color: Colors.white),
        title: appbartitle,
        actions: [
          new IconButton(
            color: Colors.white,
            icon: actionIcon,
            onPressed: (){
              setState(() {
                if(this.actionIcon.icon == Icons.search){
                  this.actionIcon = new Icon(Icons.close,color: Colors.white,);
                  this.appbartitle = new TextField(
                    style: new TextStyle(
                      color: Colors.white,
                    ),
                    decoration: new InputDecoration(
                      prefixIcon: new Icon(Icons.search,color: Colors.white,),
                      hintText: "Search....",
                      hintStyle: new TextStyle(color: Colors.white),
                    ),
                  );
                } else{
                  this.actionIcon = new Icon(Icons.search);
                  this.appbartitle = new Text("Order history",style: TextStyle(color: Colors.white),);
                }
              });
            },
          ),
          Icon(Icons.add_alert_rounded,color: Colors.white),
        ],
        // leading: Container(
        //   child: ,
        // ),
      ),
      //Header of order history
      drawer: Sidebar(),
      //list of orders
      body: Allorders(),
    );
  }
}
