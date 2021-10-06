import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_nest/config/storage/storage.dart';

class CustomerScreen extends StatelessWidget {
  const CustomerScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Storage().deleteValue("role");
                Storage().deleteValue("access_token");
                Get.offAllNamed("/");
        },
        child: Container(
          height: 50,
          width: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Color(0xFF386641),
              borderRadius: BorderRadius.circular(30)),
          margin:
          EdgeInsets.only(top: 20, bottom: 40, left: 70, right: 70),
          child: Text(
            'Sign In',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.yellow),
          ),
        ),
      ),



      // Center(
      //   child:Inkwell(
      //     child:Container(
      //       child:Text("logout")
      //     ),
      //     onTap: (){
      //       Storage().deleteValue("role");
      //       Storage().deleteValue("access_token");
      //       Get.offAllNamed("/");
      //     }
      //   ),
      // ),
    );
  }
}
