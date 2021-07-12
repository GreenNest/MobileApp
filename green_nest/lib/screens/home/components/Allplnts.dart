import 'package:flutter/material.dart';

class Allplants extends StatelessWidget {
  const Allplants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Plantcard(
            image: "assets/cane_plam.jpg",
            title: "Cane Plam",
            stock: "6",
            price: 1300,
            press: () {},
          ),
          Plantcard(
            image: "assets/sensavaria.jpg",
            title: "Sansavaria",
            stock: "8",
            price: 1200,
            press: () {},
          ),
          Plantcard(
            image: "assets/raphis.jpg",
            title: "Raphis",
            stock: "17",
            price: 1800,
            press: () {},
          ),
          Plantcard(
            image: "assets/b_avacado.jpg",
            title: "Budded Avacado",
            stock: "10",
            price: 870,
            press: () {},
          ),
          Plantcard(
            image: "assets/curry_leaves.jpg",
            title: "Curry Leaves",
            stock: "16",
            price: 200,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class Plantcard extends StatelessWidget {
  const Plantcard({
    Key key, this.image, this.title, this.press, this.stock, this.price,
    //@required this.size,
  }) : super(key: key);

  //final Size size;
  final String image,title,stock;
  final int price;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: 10,
        top: 10,
        bottom: 10,
      ),
      width: size.width * 0.55,
      child: Column(
        children: [
          Image.asset(image,) ,
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(120/4),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,10),
                      blurRadius: 50,
                      color: Colors.teal.withOpacity(0.05),
                    )
                  ]
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                        children:[
                          TextSpan(
                            text:"$title\n" .toUpperCase(),
                            style: Theme.of(context).textTheme.button,
                          ),
                          TextSpan(
                            text:"$stock in Stock \n",
                            style: TextStyle(color: Colors.amber[800]),
                          ),
                          TextSpan(
                            text:"$price LKR",
                            style: Theme.of(context).textTheme.button.copyWith(color: Colors.green),
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