import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:flutter/src/material/icons.dart';

import 'package:green_nest/screens/Leave/Components/Sidebar_staff.dart';
import 'package:green_nest/screens/Leave/Components/leave_button.dart';
import 'package:green_nest/screens/Leave/Esidebar.dart';

class Leave extends StatefulWidget {
  const Leave({Key key}) : super(key: key);

  @override
  _LeaveState createState() => _LeaveState();
}

class _LeaveState extends State<Leave> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[800],



         // leading: const Icon(
         //   Icons.menu,
         //   color: Colors.white,
         // ),

        actions: <Widget>[
          // IconButton(
          //   icon: const Icon(
          //     Icons.logout,
          //     color: Colors.white,
          //   ),
          // )
        ],
      ),
      drawer: ESidebar(),
      body: Padding(
        padding: EdgeInsets.only(top: 30.0, left: 20.0,right: 20.0),
        child: ListView(
          children: <Widget>[
            Container(
              //color: Colors.white,
             // margin: EdgeInsets.only(bottom: 30.0),

              height: 650,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,

                    )
                  ]
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 30.0, right: 20, left: 20),

                   child:Text(
                    'Request a Leave',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 80.0, right: 20, left: 20),

                      child:TextFormField(

                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                      decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black.withOpacity(0.2),
                      prefixIcon: Icon(
                        Icons.account_circle_outlined,
                        color: Colors.black,
                      ),
                      contentPadding:
                      EdgeInsets.only(left: 2, top: 2, bottom: 2, right: 20),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                          BorderSide(width: 0, style: BorderStyle.none)),
                      hintText: ' Saman',
                    ),
                  )
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 20.0, right: 20, left: 20),

                      child:TextFormField(

                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black.withOpacity(0.2),
                          prefixIcon: Icon(
                            Icons.account_circle_outlined,
                            color: Colors.black,
                          ),
                          contentPadding:
                          EdgeInsets.only(left: 2, top: 2, bottom: 2, right: 20),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                              BorderSide(width: 0, style: BorderStyle.none)),
                          hintText: ' Kumara',
                        ),
                      )
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 20.0, right: 20, left: 20),

                      child:TextFormField(

                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black.withOpacity(0.2),
                          prefixIcon: Icon(
                            Icons.textsms,
                            color: Colors.black,
                          ),
                          contentPadding:
                          EdgeInsets.only(left: 2, top: 2, bottom: 2, right: 20),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                              BorderSide(width: 0, style: BorderStyle.none)),
                          hintText: ' Reason',
                        ),
                      )
                  ),
                  Container(
                  margin: EdgeInsets.only(top: 40.0, left: 50, right: 50),
                    //alignment: FractionalOffset.center,
                    child: Row(
                      children: <Widget>[

                        Icon(

                          Icons.check_box,
                          color: Colors.black,

                        ),
                        Text(
                          '  Full Day',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black
                          ),
                        ),
                        Spacer(flex: 5),
                        Icon(

                          Icons.check_box_outline_blank,
                          color: Colors.black,

                        ),
                        Text(
                          '  Half Day',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black
                          ),
                        )
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 40.0, right: 20, left: 20),

                    child: Column(

                      children: <Widget>[
                        leave_button(
                            text: "Submit",
                            textColor: Color(0xFFF2E8CF),
                            color: Color(0xFF386641),
                            press: () => {},
                            borderColor: Color(0xFF386641),

                        ),

                        leave_button(
                            text: "Cancel",
                            textColor: Color(0xFFF2E8CF),
                            color: Colors.redAccent,
                            press: () => {},
                            borderColor: Colors.redAccent
                        )
                      ],
                    ),
                  )

                ],
              ),

            )
          ],
        ),
      ),
      // drawer: Sidebar_staff(),
    );
  }
}
