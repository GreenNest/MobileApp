import 'package:flutter/material.dart';
import 'package:green_nest/screens/home/home.dart';
import 'components/productCard.dart';
import 'components/cardProduct.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  Widget appbartitle= new Text('Fruit Plants',style: TextStyle(color: Colors.white),);
  Icon actionIcon = new Icon(Icons.search);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xFF386641),
      //   leading: GestureDetector(
      //     onTap: () {
      //       Navigator.pop(context, MaterialPageRoute(builder: (context)=>Home()));
      //     },
      //     child: Icon(
      //       Icons.arrow_back,
      //       color: Colors.white,
      //       size: 30,
      //     ),
      //   ),
      //   title: Text(
      //     "Fruit Plants",
      //     style: TextStyle(
      //       color: Colors.white,
      //       fontSize: 24,
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
                  this.appbartitle = new Text("Fruit Plants",style: TextStyle(color: Colors.white),);
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
