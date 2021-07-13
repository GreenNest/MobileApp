import 'package:flutter/material.dart';
import 'components/productCard.dart';
import 'components/cardProduct.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
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
        // child: GridView.count(
        //   padding: const EdgeInsets.all(20),
        //   primary: false,
        //   crossAxisCount: 2,
        //   crossAxisSpacing: 15,
        //   mainAxisSpacing: 15,
        //   children: List.generate(10, (index) {
        //     return Center(
        //       child: CardProduct(),
        //     );
        //   }),
        // ),

        child: CardProduct(),
      ),
    );
  }
}
