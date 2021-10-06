import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_nest/getx/deliverPerson/CompletedOders.dart';
import 'package:green_nest/models/Oders.dart';
import 'package:green_nest/screens/order/order.dart';
import 'package:green_nest/screens/product/product.dart';


class Completeorders extends StatelessWidget {
  final controller = Get.find<CompletedOders>();

  @override
  Widget build(BuildContext context) {
    return GetX<CompletedOders>(
        initState: (_){
          controller.onInit();
        },
        builder: (controller){
          return (controller.isLoad.value) ?
          Center(
            child: CircularProgressIndicator(),
          ):
          (controller.list.length != 0 )?
          ListView(
            scrollDirection: Axis.vertical,
            children: controller.list.map((element) => Card(
              color: Colors.grey[200],
              margin: EdgeInsets.all(8),
              child: OrderBar(oder: element),
            ),).toList(),

          ) :
          Container(
            alignment: Alignment.center,
            child: Text(
              "No Delivered Orders",
              style: TextStyle(
                  color: Colors.black
              ),
            ),
          );
        }

    );
  }
}

//order card
class OrderBar extends StatelessWidget {
  final controller = Get.find<CompletedOders>();
  final Oders oder;
   OrderBar({
    Key key, @required this.oder
    //@required this.size,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Divider(color: Colors.grey,),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              iconText(
                  Icon(Icons.money, color: Colors.lightGreen),
                  Text(
                    "Order type",
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),)),
              Text(oder.type,
                style: TextStyle(fontSize: 14),)
            ],
          ),

          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              iconText(
                  Icon(Icons.person, color: Colors.lightGreen),
                  Text(
                    "Customer",
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),)),
              Text(oder.name,
                style: TextStyle(fontSize: 14),)
            ],
          ),
          SizedBox(height: 15,),
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                iconText(
                    Icon(Icons.phone, color: Colors.lightGreen),
                    Text(
                      "Phone Number",
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),)),
                Text(oder.phone.toString(),
                  style: TextStyle(fontSize: 14),)
              ],
            ),
            onTap: (){
              controller.makeCall(oder.phone);
            },
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
              Text(oder.address,
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



