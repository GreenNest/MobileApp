import 'package:flutter/material.dart';
import 'package:green_nest/screens/deliveryperson/components/Completeorders.dart';
import 'package:green_nest/screens/deliveryperson/components/Deliveryheader.dart';
import 'package:green_nest/screens/deliveryperson/components/Notcompleteorders.dart';
import 'package:green_nest/screens/deliveryperson/components/ongoingorders.dart';

import 'components/dsidebar.dart';

class Deliveryperson extends StatefulWidget {
  //const Deliveryperson({Key? key}) : super(key: key);

  @override
  _DeliverypersonState createState() => _DeliverypersonState();
}

class _DeliverypersonState extends State<Deliveryperson> {
  Widget appbartitle= new Text('Orders',style: TextStyle(color: Colors.white),);
  Icon actionIcon = new Icon(Icons.search);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
                    this.appbartitle = new Text("Orders",style: TextStyle(color: Colors.white),);
                  }
                });
              },
            ),
            Icon(Icons.add_alert_rounded,color: Colors.white),
          ],
            bottom:TabBar(
              tabs: [
                Tab(icon: Icon(Icons.delivery_dining,color: Colors.white,)),
                Tab(icon: Icon(Icons.assignment_turned_in,color: Colors.white,)),
                Tab(icon: Icon(Icons.announcement,color: Colors.white,)),
              ],
            )
          // leading: Container(
          //   child: ,
          // ),
        ),
        drawer: Sidebar(),

        body: TabBarView(
          children: [
            ongoinorders(),
            Completeorders(),
            Notcompleteorders(),
          ],
        ),
      ),
    );
  }
}
