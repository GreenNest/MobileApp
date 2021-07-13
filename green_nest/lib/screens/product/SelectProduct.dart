import 'package:flutter/material.dart';

class SelectProduct extends StatefulWidget {
  const SelectProduct({Key key}) : super(key: key);

  @override
  _SelectProductState createState() => _SelectProductState();
}

class _SelectProductState extends State<SelectProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(

              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,


              decoration: BoxDecoration(

                color: Colors.redAccent,

                  image: DecorationImage(
                      image: AssetImage(
                        'assets/clorofitum.png',
                      ),
                      fit: BoxFit.cover
                  )
              ),
              ),
            Container(
              height: 100,
              //color: Colors.white,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                  )
                ]
              ),
              margin: EdgeInsets.only(
                top: 10,
                left: 20,
                right: 20

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    width: 120,
                    height: 110,
                    image: AssetImage(
                      'assets/clorofitum.png',

                    ),
                  ),
                 // Spacer(flex: 1,),
                  Image(
                    width: 120,
                    height: 110,
                    image: AssetImage(
                      'assets/clorofitum.png',

                    ),
                  ),
                  Image(
                    width: 120,
                    height: 110,
                    image: AssetImage(
                      'assets/clorofitum.png',

                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
                right: 20,
                left: 24,
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
                    Icons.star,
                    size: 35,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            Container(


              margin: EdgeInsets.only(
                top: 5,
                right: 20,
                left: 24,
              ),
              child: Row(
               // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'LKR 500',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green[700],
                      fontSize: 28,
                    ),
                  ),
                  Spacer(flex: 1,),
                  Container(

                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Text(
                        '-',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 80,
                    child: Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  Container(

                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.green[300],
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Text(
                        '+',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 5,
                right: 20,
                left: 24,
              ),
              child: Row(
                children: [
                  Text(
                    '5 in Stock',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red[700],
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
                right: 20,
                left: 24,
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
                      fontSize: 18,

                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 2,
                right: 20,
                left: 24,
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
                      fontSize: 18,

                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 2,
                right: 20,
                left: 24,
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
                      fontSize: 18,

                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
                right: 20,
                left: 24,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 30,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 30,

                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 30,

                  ),
                  Icon(
                    Icons.star_border_purple500_outlined,
                    color: Colors.yellow,
                    size: 30,

                  ),
                  Icon(
                    Icons.star_border_purple500_outlined,
                    color: Colors.yellow,
                    size: 30,

                  ),

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 30,
                right: 20,
                left: 24,
              ),


              child: Row(
                children: [

                  Text(
                    'Product Reviews',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // Container(
                  //   height: 200,
                  //   decoration: BoxDecoration(
                  //       color: Colors.blue,
                  //       boxShadow: [
                  //         BoxShadow(
                  //           color: Colors.grey.withOpacity(0.5),
                  //           spreadRadius: 5,
                  //           blurRadius: 7,
                  //
                  //         )
                  //       ]
                  //   ),
                  //   //child: ,
                  // ),

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 20,
                right: 20,
                left: 24,
                bottom: 30,
              ),
              padding: const EdgeInsets.all(10),

              height: 120,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,

                    )
                  ]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Recived a healthy plant, with more than 10 fresh leaves.'
                        ' It was grafted well. The plant was nicely packed in hard cardboard. '
                        'I have tried few other sellers earlier who were worse and expensive.'
                        ' So this one is comparatively good. After observation of 5 days, '
                        'its visible that the plant is improving on its growth day by day.',
                    style: TextStyle(
                      fontSize: 16,

                    ),

                  ),

                ],
              )
              //child: ,
            ),

            Container(
                margin: EdgeInsets.only(
                  top: 10,
                  right: 20,
                  left: 24,
                  bottom: 30,
                ),
                padding: const EdgeInsets.all(10),


                height: 120,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 7,

                      )
                    ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,




                  children: [
                    Text(

                      'Received a wilted plant (no roots were visible) which'
                          ' didn’t stand a chance to survive even in the rainy'
                          ' conditions. It was not grafted as well. Tried reviving '
                          'the plant but did not work out. All leaves dried up and the stem is also drying up.'
                          ' A waste of effort, and money. Do not use this nursary to place order plants. ',
                      style: TextStyle(
                        fontSize: 16,


                      ),

                    ),

                  ],
                )
              //child: ,
            ),

            Container(
              margin: EdgeInsets.only(
                top: 20,
                right: 20,
                left: 24,
              ),

              child: Row(
                children: [
                  Text(
                    'Related Products',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ),
            Container(
              height: 100,
              //color: Colors.white,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                    )
                  ]
              ),
              margin: EdgeInsets.only(
                  top: 20,
                  left: 20,
                  right: 20,
                bottom: 30

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    width: 120,
                    height: 110,
                    image: AssetImage(
                      'assets/cane_plam.jpg',

                    ),
                  ),
                  // Spacer(flex: 1,),
                  Image(
                    width: 120,
                    height: 110,
                    image: AssetImage(
                      'assets/sensavaria.jpg',

                    ),
                  ),
                  Image(
                    width: 120,
                    height: 110,
                    image: AssetImage(
                      'assets/curry_leaves.jpg',

                    ),
                  )
                ],
              ),
            ),

            Container(

                margin: EdgeInsets.only(
                  top: 20,
                  right: 20,
                  left: 24,
                  bottom: 30,
                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                    decoration: BoxDecoration(
                      color: Color(0xFFF2E8CF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    //height: 70,
                    //width: 150,
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.green[700],
                      ),
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                    decoration: BoxDecoration(
                      color: Colors.green[700],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    //width: 150,
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),

                ],
              ),
            )




          ],
        ),
      ),
    );
  }
}
