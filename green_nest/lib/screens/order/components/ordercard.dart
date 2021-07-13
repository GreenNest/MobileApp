import 'package:flutter/material.dart';
import 'package:green_nest/screens/product/product.dart';


class ordercard extends StatelessWidget {
  const ordercard({
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
            status: "ongoing",
            orederid: "OR2103",
            date: "2021/07/09",
            address:"NO:28/A ,Bangamuwa,Kurunagala",

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
                MainText(
                    Text(
                      "Customer :",
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),)),
                Text("N.P.M.Abyesekara",
                style: TextStyle(fontSize: 14,),),
                //Spacer(flex: 1,),
                Spacer(),
                ]
          ),
          Divider(color: Colors.grey,),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              iconText(
                  Icon(Icons.arrow_right_rounded, color: Colors.lightGreen),
                  Text(
                    "Budded Avacado",
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),)
              ),

              Text("2",
                style: TextStyle(fontSize: 14),),
              Text("800 LKR",
                style: TextStyle(fontSize: 14),)
            ],
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              iconText(
                  Icon(Icons.arrow_right_rounded, color: Colors.lightGreen),
                  Text(
                    "Sensavaria",
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),)
              ),

              Text("1",
                style: TextStyle(fontSize: 14),),
              Text("1200 LKR",
                style: TextStyle(fontSize: 14),)
            ],
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              iconText(
                  Icon(Icons.arrow_right_rounded, color: Colors.lightGreen),
                  Text(
                    "Plastic pots",
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),)
              ),

              Text("5",
                style: TextStyle(fontSize: 14),),
              Text("750 LKR",
                style: TextStyle(fontSize: 14),)
            ],
          ),

          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              iconText(
                  Icon(Icons.arrow_right_rounded, color: Colors.lightGreen),
                  Text(
                    "lemon",
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),)
              ),

              Text("2",
                style: TextStyle(fontSize: 14),),
              Text("200 LKR",
                style: TextStyle(fontSize: 14),)
            ],
          ),
          Divider(color: Colors.grey,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              iconText(
                  Icon(Icons.arrow_right_rounded, color: Colors.lightGreen),
                  Text(
                    "Total",
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),)
              ),


              Text("1950 LKR",
                style: TextStyle(fontSize: 14),)
            ],
          ),

        ],
      ),
    );
  }

  //order car item
  Widget iconText(iconWidget, TextWidget) {
    return Row(
        children: [iconWidget, SizedBox(width: 5), TextWidget]);
  }

  Widget MainText( TextWidget) {
    return Row(
        children: [ SizedBox(width: 5), TextWidget]);
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



