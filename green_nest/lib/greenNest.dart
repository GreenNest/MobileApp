import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_nest/Signin.dart';
import 'package:green_nest/screens/wrapper.dart';

import 'getx/bindings/RootBindings.dart';
import 'screens/customer/Customer.dart';
import 'screens/deliverPerson/Delivery_person_homepage.dart';

// ========================================= GETX FOR ROUTE MANAGEMENT =======================================

class GreenNest extends StatefulWidget {
  const GreenNest({Key key}) : super(key: key);

  @override
  _GreenNestState createState() => _GreenNestState();
}

class _GreenNestState extends State<GreenNest> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Green Nest",
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      getPages: [
        // ================================== IDENTFY ALL ROUTES (SCREENS) HEAR ===========================
        GetPage(name: "/", page: () => Wrapper()),
        GetPage(name: "/login", page: () => Signin()),
        GetPage(name: "/customer", page: () => CustomerScreen()),
        GetPage(name: "/deliver", page: () => Deliveryperson(), binding: RootBindings()),
      ],
    );
  }
}
