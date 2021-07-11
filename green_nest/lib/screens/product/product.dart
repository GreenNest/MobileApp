import 'package:flutter/material.dart';
import 'components/productCard.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF386641),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 30,
        ),
        title: Text(
          "Fruit Plants",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
      body: Container(
        child: GridView.count(
          padding: const EdgeInsets.all(20),
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          children: List.generate(10, (index) {
            return Center(
              child: ProductCard(),
            );
          }),
        ),
      ),
    );
  }
}
