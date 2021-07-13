import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';


class Sidebar_staff extends StatefulWidget {
  const Sidebar_staff({Key key}) : super(key: key);

  @override
  _Sidebar_staffState createState() => _Sidebar_staffState();
}

class _Sidebar_staffState extends State<Sidebar_staff> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xFF386641),
        padding: EdgeInsets.zero,

        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountEmail: Text(
                  'Saman Kumara',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,

                  ),
                ),

              accountName: Text(
                'Saman Kumara',
                style: TextStyle(
                    color: Colors.white,

                  fontWeight: FontWeight.bold,
                ),
              ),

              currentAccountPicture: Icon(

                Icons.account_circle,
                size: 100,
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 200,left: 30),
              child: Row(
                children: [
                  Icon(
                    Icons.calendar_today,
                    color: Colors.white,
                    size: 35,
                  ),


                  Text(
                    '   Leave Request',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 30,left: 30),
              child: Row(
                children: [
                  Icon(
                    Icons.insert_chart,
                    color: Colors.white,
                    size: 35,
                  ),


                  Text(
                    '   Leave Statistics',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            )



              // leading: Icon(
              //
              //   Icons.calendar_today,
              //   color: Color(0xFFF2E8CF),
              //   size: 35),
              //
              // title: Text(
              //   'Leave Request',
              //   style: TextStyle(
              //       color: Color(0xFFF2E8CF)
              //   ),
              // ),
              // onTap: (){},

          ],
        ),
      ),
    );
  }
}
