import 'package:flutter/material.dart';
import 'package:green_nest/screens/deliveryperson/components/Completeorders.dart';
import 'package:green_nest/screens/deliveryperson/components/Deliveryheader.dart';
import 'package:green_nest/screens/deliveryperson/components/Notcompleteorders.dart';
import 'package:green_nest/screens/deliveryperson/components/ongoingorders.dart';

class Deliveryperson extends StatefulWidget {
  //const Deliveryperson({Key? key}) : super(key: key);

  @override
  _DeliverypersonState createState() => _DeliverypersonState();
}

class _DeliverypersonState extends State<Deliveryperson> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: Deliveryheader(),

        body: TabBarView(
          children: [
            ongoinorders(),
            Completeorders(),
            Notcompleteorders(),
          ],
        ),
      ),
    );
  }
}
