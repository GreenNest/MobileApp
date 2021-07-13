import 'package:flutter/material.dart';
import 'package:green_nest/screens/order/order.dart';
import 'package:green_nest/screens/product/product.dart';


class Notcompleteorders extends StatelessWidget {
  const Notcompleteorders({
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
          margin: EdgeInsets.all(8),
          child: OrderBar(
            status: "delivered",
            orederid: "OC1000",
            date: "2021/07/08",
            address:"NO:28/A ,kurunagala",

          ),
        ),
        Card(
          color: Colors.grey[200],
          margin: EdgeInsets.all(10),
          child: OrderBar(
            status: "ongoing",
            orederid: "OR3020",
            date: "2021/06/23",
            address:"Subha,Kurunagala",
          ),
        ),
        
      ],

    );
  }
}

//order card
class OrderBar extends StatelessWidget {
  const OrderBar({
    Key key, this.status, this.orederid, this.date, this.address,
    //@required this.size,
  }) : super(key: key);

  //final Size size;
  final String status,orederid,date,address;

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                checkButton(
                  Row(
                    children: [
                      Icon(Icons.check,color: Colors.red,),
                    ],
                  ),
                  Colors.white,
                      () {},
                ),
                Spacer(),
                flatButton(
                  Row(
                    children: [
                      Text("Order Details"),
                      Icon(Icons.chevron_right),
                    ],
                  ),
                  Colors.lightGreen[400],
                      () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Order()));
                      },
                ),]
          ),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              iconText(
                  Icon(Icons.location_pin, color: Colors.lightGreen),
                  Text(
                    "Address",
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),)),
              Text(address,
                style: TextStyle(fontSize: 14),)
            ],
          ),
          SizedBox(height: 15,),

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

  Widget checkButton(Widget iconText, Color color, Function onPressed) {
    return FlatButton(
      onPressed: onPressed,
      child: iconText,
      padding: EdgeInsets.all(6),
      color: color,
      shape: CircleBorder(),
    );
  }

  //check the status and retun icon and text
  Widget _orderStatus(String status) {
    Icon icon;
    Color color;

    if (status == "ongoing") {
      icon = Icon(Icons.timer, color: Colors.orange);
      icon = Icon(Icons.check, color: Colors.orange);
      color = Colors.orange;
      // } else if (status == "Delevered") {
      //   icon = Icon(Icons.check, color: Colors.green);
      //   color = Colors.green;
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



