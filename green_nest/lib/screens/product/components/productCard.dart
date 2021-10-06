import 'package:flutter/material.dart';
import 'package:green_nest/widgets/text/CustomText.dart';

class ProductCard extends StatelessWidget {
  final Color color;

  const ProductCard({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      color: color,
      child: Column(
        children: [
          Container(
            height: 200.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image3.jpg'),
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          CustomText(
            text: "Mango Plant",
            color: Color(0xFF386641),
            size: 20.0,
            weight: FontWeight.w800,
          ),
          CustomText(
            text: "350LKR",
            color: Color(0xFFF44336),
            size: 18.0,
            weight: FontWeight.w500,
          ),
          CustomText(
            text: "10 in stock",
            color: Color(0xFF000000),
            size: 15.0,
            weight: FontWeight.w400,
          ),
          FloatingActionButton.extended(
            onPressed: () {},
            label: Text(
              "Add to Cart",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.pink[50],
          ),
        ],
      ),
    );
  }
}
