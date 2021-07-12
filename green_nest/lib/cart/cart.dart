import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cart extends StatefulWidget {
  const cart({Key key}) : super(key: key);

  @override
  _cartState createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[700],
        leading: const Icon(
            Icons.arrow_back,
            color: Colors.white,

        ),


        actions: <Widget>[
           IconButton(

             icon: const Icon(Icons.shopping_cart,
               color: Colors.white,

             ),
           ),

         ],

        title: const Text(

          'Your Cart',
         // textAlign: TextAlign.center,



        ),

      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 60.0, left: 40.0, right: 20),
        child: ListView(

          children: <Widget>[
            Container(
            child:Row(
              children: <Widget>[
                Icon(
                  Icons.check_box_outline_blank,
                ),
                Text(
                  '  Select All',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],

            ),

            ),

            Container(
              //color: Colors.yellow,
              height: 120,
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

              margin: EdgeInsets.only(top: 50, right: 10,left: 10),
              child: Row(

                children: <Widget>[
                  Icon(

                    Icons.check_box_outline_blank,
                  ),
                  Image(
                    width: 100.0,


                    image: AssetImage(

                      'assets/curry_leaves.jpg',
                    ),
                  ),
                  Text(

                    '  Mango Plant',
                  )

                ],

              ),
            )

          ],

        ),

      ),
    );
  }
}
