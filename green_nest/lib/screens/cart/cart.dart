import 'package:flutter/material.dart';
import 'package:green_nest/screens/home/components/sidebar.dart';

class CartView extends StatefulWidget {
  @override
  _CartViewState createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  Widget appbartitle= new Text('Shopping Cart',style: TextStyle(color: Colors.white),);
  Icon actionIcon = new Icon(Icons.search);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0.0,
      //   backgroundColor: Colors.transparent,
      //   leading: IconButton(
      //     icon: Icon(
      //       Icons.keyboard_arrow_left,
      //       color: Colors.black,
      //     ),
      //     onPressed: () {},
      //   ),
      // ),
      backgroundColor: Color(0xFFF2E8CF),
      // appBar: AppBar(
      //   backgroundColor: Color(0xFF386641),
      //   // leading: Icon(
      //   //   Icons.arrow_back,
      //   //   color: Colors.white,
      //   //   size: 24,
      //   // ),
      //   title: Text(
      //     "Shopping Cart",
      //     style: TextStyle(
      //       color: Colors.white,
      //       fontSize: 24,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      // ),
      appBar: AppBar(
        backgroundColor: Color(0xFF386641),
        title: appbartitle,
        actions: [
          new IconButton(
            color: Colors.white,
            icon: actionIcon,
            onPressed: (){
              setState(() {
                if(this.actionIcon.icon == Icons.search){
                  this.actionIcon = new Icon(Icons.close,color: Colors.white,);
                  this.appbartitle = new TextField(
                    style: new TextStyle(
                      color: Colors.white,
                    ),
                    decoration: new InputDecoration(
                      prefixIcon: new Icon(Icons.search,color: Colors.white,),
                      hintText: "Search....",
                      hintStyle: new TextStyle(color: Colors.white),
                    ),
                  );
                } else{
                  this.actionIcon = new Icon(Icons.search);
                  this.appbartitle = new Text("Shopping Cart",style: TextStyle(color: Colors.white),);
                }
              });
            },
          ),
          Icon(Icons.add_alert_rounded,color: Colors.white),
        ],
        // leading: Container(
        //   child: ,
        // ),
      ),
      drawer: Sidebar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),

        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text(
            //   "Shopping Cart",
            //   style: TextStyle(
            //     fontWeight: FontWeight.bold,
            //     fontSize: 21.0,
            //   ),
            // ),
            //18
            SizedBox(height: 8.0),
            CartItem(),
            CartItem(),
            CartItem(),
            CartItem(),
            //10
            SizedBox(height: 0.0),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Total",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  "1,600 LKR",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 4.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Delivery charge",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  "\200 LKR",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Sub Total",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "1,800 LKR",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Spacer(),
            MaterialButton(
              onPressed: () {},
              color: Color(0xFF386641),
              height: 50.0,
              minWidth: double.infinity,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                "Proceed to Checkout",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //18
            SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  const CartItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: <Widget>[
          Container(
            width: 100.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color(0xFFF2E8CF),
              borderRadius: BorderRadius.circular(20.0),
            ),
            // padding: EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                width: 100.0,
                //100
                height: 90.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.scaleDown,
                    image: AssetImage('assets/mango-tree.jpg'),
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          ),
          SizedBox(width: 12.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 200.0,
                  child: Text(
                    "IC1007 - Avacado Plant",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 8.0),
                Row(
                  children: <Widget>[
                    Container(
                      width: 20.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 15.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "1",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: 20.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF386641),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 15.0,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3.0),
                      child: Text(
                        "400 LKR",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
