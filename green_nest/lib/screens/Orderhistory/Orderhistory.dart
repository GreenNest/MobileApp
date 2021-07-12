
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import '../../../../../../MobileApp/green_nest/lib/screens/Orderhistory/component/orderbar.dart';
// import '../../../../../../MobileApp/green_nest/lib/screens/Orderhistory/component/headerbar.dart';
import 'component/headerbar.dart';
import 'component/orderbar.dart';


class Orderhistory extends StatefulWidget {


  @override
  _OrderhistoryState createState() => _OrderhistoryState();
}

class _OrderhistoryState extends State<Orderhistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Header of order history
      appBar: Headerbar(),
      //list of orders
      body: Allorders(),
    );
  }
}
