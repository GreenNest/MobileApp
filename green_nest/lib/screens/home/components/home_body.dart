
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:green_nest/screens/home/components/category.dart';
import 'Allplnts.dart';

class homebody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
          HeaderWithSearchBox(size: size),
         Textwithmorebutton(title:"Top" ,press:(){}),
        Allplants(),
        Allcategories()
        //Feactureplant(image: "assets/raphis.jpg", press: (){}),
      ],
    );
  }
}


//more button designs
class Textwithmorebutton extends StatelessWidget {
  const Textwithmorebutton({
    Key key, this.title , this.press,
  }) : super(key: key);
  final String title;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,),
      child: Row(
        children: [
          TitleWithcoustomUnderline(text: title,),
          Spacer(),
          FlatButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              color: Colors.teal[700],
              onPressed: press,
              child: Text("More", style: TextStyle(color: Colors.white),)),
        ],
      ),
    );
  }
}

//hi text style
class TitleWithcoustomUnderline extends StatelessWidget {
  const TitleWithcoustomUnderline({
    Key key, this.text,
  }) : super(key: key);
 final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
        //  Row(
         //   children: [
              Padding(
                padding: const EdgeInsets.only(left: 20/4),
                child: Text(text,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ),
           Positioned(
             bottom: 0,
               right: 0,
               left: 0,
               child:Container(
                 margin: EdgeInsets.only(right: 1/4),
                 height: 5,
                 color: Colors.green.withOpacity(0.9),
               ) ),
           // ],
         // )

        ],
      ),
    );
  }
}

// searchbar and Head body style
class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      height: size.height* 0.175,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 15
            ),
            height: size.height *0.175 -30,
            decoration: BoxDecoration(
              color: Color(0xFF386641),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              )
            ),
            child: Row(
              children: [
                Text("Hi Dulanjali ...!", style: Theme.of(context).textTheme.headline6.copyWith(color: Colors.white,fontWeight: FontWeight.bold),)
              ],
            ),
            ),
          Positioned(
            bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                padding: EdgeInsets.symmetric(horizontal: 30),
                height: 54,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,10),
                      blurRadius: 50,
                      color: Colors.grey.withOpacity(0.23)
                    )
                  ]
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    suffixIcon:Icon(Icons.search,size: 30, color: Colors.grey,),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
