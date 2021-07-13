import 'package:flutter/material.dart';

class Allcategories extends StatelessWidget {
  const Allcategories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Categorycard(
            title: "Outdoor Plant",
            stock: 12,
            press: () {},
          ),
          Categorycard(
            title: "Indoor Plant",
            stock: 20,
            press: () {},
          ),
          Categorycard(
            title: "Fruit Plant",
            stock: 30,
            press: () {},
          ),
          Categorycard(
            title: "Seeds",
            stock: 50,
            press: () {},
          ),
          Categorycard(
            title: "Plastic pots",
            stock: 20,
            press: () {},
          ),
        ],
      ),
    );
  }
}


class Categorycard extends StatelessWidget {
  const Categorycard({
    Key key,  this.title, this.press, this.stock
    //@required this.size,
  }) : super(key: key);

  //final Size size;
  final String title;
  final int stock;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: 20,
        top: 2,
        bottom: 0,
      ),
      width: size.width * 0.5,
      child: Column(
        children: [
          GestureDetector(
            onTap: press,
            child: Container(
             padding: EdgeInsets.only(left: 30,right: 30),
              decoration: BoxDecoration(
                  color: Colors.lime[50],
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(10,10),
                      blurRadius: 5,
                      color: Colors.grey.withOpacity(0.50),
                    )
                  ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                        children:[
                          TextSpan(
                            text:"$title\n" .toUpperCase(),
                            style: TextStyle(color: Colors.green),
                          ),
                          TextSpan(
                            text:"$stock items \n",
                            style: TextStyle(color: Colors.black),
                          ),
                        ]
                    ),
                  ),
                ],
              ),

            ),
          ),
        ],
      ),
    );
  }
}