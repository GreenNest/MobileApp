// import 'package:flutter/material.dart';
//
// class Headerbar extends StatelessWidget implements PreferredSizeWidget {
//   @override
//   Size get preferredSize => const Size.fromHeight(100);
//
//   @override
//   Widget build(BuildContext context) {
//     // return AppBar(
//     //   backgroundColor: Color(0xFF386641),
//     //   // title: Image.asset("assets/logo.png", height: 50,),
//     //   title: Text('Order History', style: TextStyle(color: Colors.white) ,),
//     //   //leading: Icon(Icons.arrow_back, color: Colors.white,),
//     //   centerTitle: true,
//     //   // actions: [
//     //   //   IconButton(onPressed: (){}, icon: Icon(Icons.add_alert_sharp,color: Colors.white,))
//     //   // ],
//     //
//     // );
//     Widget appbartitle= new Text('PSJ Tour page title');
//     Icon actionIcon = new Icon(Icons.search);
//     return AppBar(
//       backgroundColor: Color(0xFF386641),
//       title: appbartitle,
//       actions: [
//         new IconButton(
//           icon: actionIcon,
//           onPressed: (){
//             setState(() {
//               if(this.actionIcon.icon == Icons.search){
//                 this.actionIcon = new Icon(Icons.close);
//                 this.appbartitle = new TextField(
//                   style: new TextStyle(
//                     color: Colors.white,
//                   ),
//                   decoration: new InputDecoration(
//                     prefixIcon: new Icon(Icons.search,color: Colors.white,),
//                     hintText: "Search....",
//                     hintStyle: new TextStyle(color: Colors.white),
//                   ),
//                 );
//               } else{
//                 this.actionIcon = new Icon(Icons.search);
//                 this.appbartitle = new Text("Home Page");
//               }
//             });
//           },
//         ),
//       ],
//       // leading: Container(
//       //   child: ,
//       // ),
//     ),
//   }
// }