import 'package:flutter/material.dart';
import 'package:green_nest/screens/product/product.dart';


class Allorders extends StatelessWidget {
  const Allorders({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
        children: [
          //order list
          Card(
            color: Colors.grey[200],
            margin: EdgeInsets.all(10),
            child: OrderBar(
              status: "processing",
              orederid: "OR1000",
              date: "2021/07/08",

            ),
          ),
          Card(
            color: Colors.grey[200],
            margin: EdgeInsets.all(10),
            child: OrderBar(
              status: "on-hold",
              orederid: "OR1002",
              date: "2021/06/03",

            ),
          ),
          Card(
            color: Colors.grey[200],
            margin: EdgeInsets.all(10),
            child:OrderBar(
              status: "completed",
              orederid: "OR1004",
              date: "2020/07/03",

            ),
          ),
          Card(
            color: Colors.grey[200],
            margin: EdgeInsets.all(10),
            child: OrderBar(
              status: "completed",
              orederid: "OR1003",
              date: "2021/05/03",

            ),
          ),


        ],

    );
  }
}

//order card
 class OrderBar extends StatelessWidget {
   const OrderBar({
     Key key, this.status, this.orederid, this.date,
     //@required this.size,
   }) : super(key: key);

   //final Size size;
   final String status,orederid,date;

   Widget build(BuildContext context) {
     return Container(
       margin: EdgeInsets.all(15),
       padding: EdgeInsets.all(20),
       child: Column(
         children: [
           _orderStatus(status),
           Divider(color: Colors.grey,),
           SizedBox(height: 10,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               iconText(
                   Icon(Icons.edit, color: Colors.lightGreen),
                   Text(
                     "Order Id",
                     style: TextStyle(
                         fontSize: 16, fontWeight: FontWeight.bold),)),
               Text(orederid,
                 style: TextStyle(fontSize: 14),)
             ],
           ),
           SizedBox(height: 15,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               iconText(
                   Icon(Icons.today_sharp, color: Colors.lightGreen),
                   Text(
                     "Date",
                     style: TextStyle(
                         fontSize: 16, fontWeight: FontWeight.bold),)),
               Text(date,
                 style: TextStyle(fontSize: 14),)
             ],
           ),
           SizedBox(height: 15,),
           Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               flatButton(
                 Row(
                   children: [
                     Text("Order Details"),
                     Icon(Icons.chevron_right),
                   ],
                 ),
                 Colors.lightGreen[400],
                     () {},
               ),
             ],
           )
         ],
       ),
     );
   }

   //order car item
   Widget iconText(iconWidget, TextWidget) {
     return Row(
         children: [iconWidget, SizedBox(width: 5), TextWidget]);
   }

   //order details button
   Widget flatButton(Widget iconText, Color color, Function onPressed) {
     return FlatButton(
       onPressed: onPressed,
       child: iconText,
       padding: EdgeInsets.all(6),
       color: color,
       shape: StadiumBorder(),
     );
   }

   //check the status and retun icon and text
   Widget _orderStatus(String status) {
     Icon icon;
     Color color;

     if (status == "pending" || status == "processing" || status == "on-hold") {
       icon = Icon(Icons.timer, color: Colors.orange);
       color = Colors.orange;
     } else if (status == "completed") {
       icon = Icon(Icons.check, color: Colors.green);
       color = Colors.green;
     } else
     if (status == "canceled" || status == "refunded" || status == "faile") {
       icon = Icon(Icons.clear, color: Colors.redAccent);
       color = Colors.redAccent;
     } else if (status == "completed") {
       icon = Icon(Icons.clear, color: Colors.red);
       color = Colors.green;
     }

     return iconText(
         icon,
         Text(
           "Order $status",
           style: TextStyle(
             fontSize: 15,
             color: color,
             fontWeight: FontWeight.bold,
           ),
         )
     );
   }
 }



