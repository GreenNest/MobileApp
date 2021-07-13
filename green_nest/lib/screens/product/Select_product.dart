import 'package:flutter/material.dart';

class Select_product extends StatefulWidget {
  const Select_product({Key key}) : super(key: key);

  @override
  _Select_productState createState() => _Select_productState();
}

class _Select_productState extends State<Select_product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/clorofitum.png',
                ),
                fit: BoxFit.cover
              )
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.55,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(36),
                  topRight: Radius.circular(36),

                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset(0,-4),
                    blurRadius: 8,

                  )
                ]

              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 24,
                      right: 20
                    ),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                              'Clorofitum',
                              style: TextStyle(
                                fontSize: 38,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),

                        ),
                        Icon(
                          Icons.star_border_purple500_outlined,
                          size: 35,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 24,
                      right: 30
                    ),
                    child: Row(
                      children: [
                        Text(
                          'LKR 500',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green[700],
                            fontSize: 28,
                          ),
                        ),
                        // Text(
                        //   '5 in Stock',
                        //   style: TextStyle(
                        //     fontWeight: FontWeight.bold,
                        //     color: Colors.redAccent,
                        //     fontSize: 25
                        //   ),
                        // )

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10,
                        left: 24,
                        right: 30
                    ),
                    child: Row(
                      children: [
                        Text(
                          '5 in stock',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent
                          ),
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 24,
                      right: 30
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.bookmark_border_sharp,
                          color: Colors.green,
                        ),
                        Text(
                          ' Modern Indoor plant',
                          style: TextStyle(
                            fontSize: 20,

                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 5,
                        left: 24,
                        right: 30
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.bookmark_border_outlined,
                          color: Colors.green,
                        ),
                        Text(
                          ' Unique Decor',
                          style: TextStyle(
                            fontSize: 20,

                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 5,
                        left: 24,
                        right: 30
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.pedal_bike_sharp,
                          color: Colors.blue,
                        ),
                        Text(
                          ' Deliver to your door steps',
                          style: TextStyle(
                            fontSize: 20,

                          ),
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20,
                        left: 24,
                        right: 30
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star_border_purple500_outlined,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star_border_purple500_outlined,
                          color: Colors.yellow,
                        ),





                      ],
                    ),
                  ),


                  Container(
                    padding: const EdgeInsets.only(
                      top: 20,
                      right: 24,
                      left: 24
                    ),

                    child: Row(
                      children: [
                        Container(
                      height: 10,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,

                            )
                          ]
                        ),
                          //child: ,
                        ),

                      ],
                    ),
                  )
                ],
              ),

            ),
          )
        ],
      ),
    );
  }
}
