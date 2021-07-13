import 'package:flutter/material.dart';

class CardProduct extends StatefulWidget {
  @override
  _CardProductState createState() => _CardProductState();
}

class _CardProductState extends State<CardProduct> {
  final List<String> images = <String>[
    'assets/orange.jpg',
    'assets/mango.jpeg',
    'assets/grapes.jpeg',
    'assets/papaya.jpg',
  ];
  final List<String> name = <String>[
    'Orange Plant',
    'Mango Plant',
    'Grape Palnt',
    'Papaya Plant',
  ];
  final List<String> price = <String>['500LKR', '150LKR', '550LKR', '100LKR'];
  final List<int> stock = <int>[10, 35, 20, 50];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: name.length,
      padding: const EdgeInsets.all(20.0),
      itemBuilder: (BuildContext context, int index) {
        return Card(
          margin: EdgeInsets.only(bottom: 20.0),
          child: Row(
            children: [
              Container(
                //Piyumi change width 200->150
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('${images[index]}'),
                      alignment: Alignment.topLeft),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Column(
                  children: [
                    Text(
                      '${name[index]}',
                      style: TextStyle(
                        color: Color(0xFF386641),
                        fontSize: 26.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      '${price[index]}',
                      style: TextStyle(
                        color: Color(0xFFF44336),
                        fontSize: 22.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '${stock[index]} in stock',
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 19.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: FloatingActionButton.extended(
                        onPressed: () {},
                        label: Text(
                          "Add to Cart",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        backgroundColor: Colors.pink[50],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
