import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_nest/Signin.dart';
import 'package:green_nest/services/HttpRequest.dart';

import 'config/common/CommonDialog.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final emailController = TextEditingController();
  final firstController = TextEditingController();
  final lastController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  bool obsecure = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: Colors.green,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topCenter,
              image: AssetImage(
                'assets/back3.jpeg',
              ),
              fit: BoxFit.cover,
            )),
        child: ListView(
          children: <Widget>[
            Container(
              //    height: size.height*0.40,
              //    decoration: BoxDecoration(
              //        color: Color(0xFFF2E8CF),
              //        borderRadius: BorderRadius.only(
              //          bottomLeft: Radius.circular(36),
              //          bottomRight: Radius.circular(36),
              //        )
              //    ),
              //   child: Container(
              //     alignment: Alignment.center,
              //     height: 250.0,
              //     //margin: EdgeInsets.only(top: 0.0),
              //
              //     child: Image.asset('assets/GreenNest.png'),
              //
              //   ),
            ),
            Container(
              margin: EdgeInsets.only(top: 150.0, right: 20, left: 20),
              alignment: Alignment.center,
              child: Text(
                "Sign Up",
                style: TextStyle(
                  color: Color(0xFF386641),
                  fontSize: 50,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0, right: 30, left: 30),
              width: 200,
              height: 70,
              decoration: BoxDecoration(
                // color: Colors.white,
                  borderRadius: BorderRadius.circular(20)),
              //color: Colors.red,
              child: TextFormField(
                controller: firstController,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.9),
                  prefixIcon: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.black,
                  ),
                  contentPadding:
                  EdgeInsets.only(left: 2, top: 2, bottom: 2, right: 20),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                      BorderSide(width: 0, style: BorderStyle.none)),
                  hintText: 'First Name',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 2.0, right: 30, left: 30),
              width: 200,
              height: 70,
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: TextFormField(
                controller: lastController,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.9),
                  prefixIcon: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.black,
                  ),
                  contentPadding:
                  EdgeInsets.only(left: 2, top: 2, bottom: 2, right: 20),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                      BorderSide(width: 0, style: BorderStyle.none)),
                  hintText: 'Last Name',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 2.0, right: 30, left: 30),
              width: 200,
              height: 70,
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: TextFormField(
                controller: emailController,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.9),
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.black,
                  ),
                  contentPadding:
                  EdgeInsets.only(left: 2, top: 2, bottom: 2, right: 20),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                      BorderSide(width: 0, style: BorderStyle.none)),
                  hintText: ' Email',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 2.0, right: 30, left: 30),
              width: 200,
              height: 70,
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: TextFormField(
                controller: phoneController,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.9),
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Colors.black,
                  ),
                  contentPadding:
                  EdgeInsets.only(left: 2, top: 2, bottom: 2, right: 20),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                      BorderSide(width: 0, style: BorderStyle.none)),
                  hintText: 'Mobile Number',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 2.0, right: 30, left: 30),
              width: 200,
              height: 70,
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: TextFormField(
                controller: passwordController,
                obscureText: obsecure,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.9),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.black,
                  ),
                  contentPadding:
                  EdgeInsets.only(left: 2, top: 2, bottom: 2, right: 20),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                      BorderSide(width: 0, style: BorderStyle.none)),
                  hintText: 'Password',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 2.0, right: 30, left: 30),
              width: 200,
              height: 70,
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: TextFormField(
                controller: confirmPasswordController,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.9),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.black,
                  ),
                  contentPadding:
                  EdgeInsets.only(left: 2, top: 2, bottom: 2, right: 20),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                      BorderSide(width: 0, style: BorderStyle.none)),
                  hintText: 'Confirm Password',
                ),
              ),
            ),
            // Container(
            //   height: 50,
            //   width: 100,
            //   alignment: Alignment.center,
            //   decoration: BoxDecoration(
            //       color: Color(0xFF386641),
            //       borderRadius: BorderRadius.circular(30)),
            //   margin: EdgeInsets.only(top: 10, bottom: 40, left: 70, right: 70),
            //   child: Text(
            //     'Sign Up',
            //     style: TextStyle(
            //       fontSize: 18,
            //       color: Colors.yellow,
            //       fontWeight: FontWeight.w800,
            //     ),
            //   ),
            // ),
            GestureDetector(
              onTap: () {
                _handleRegister();
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
                  'Sign Up',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.yellow),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Signin()));
                    },
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _handleRegister() {
    CommonDialog().createProgress("Please wait...");

    Map<String, dynamic> _data = {
      "first_name": firstController.text,
      "last_name": lastController.text,
      "mobile": phoneController.text,
      "profile": {
        "email": emailController.text,
        "password": passwordController.text,
        "authorities": [
          {"roleCode": "customer"}
        ]
      }
    };

    HttpRequest(url: "customer", data: _data).postRegisterData().then((value) {
      if (value) {
        Get.back();
        Get.offAllNamed("/");
      } else {
        Get.back();
        // ==================== CREATE ERROR ALERT BOX ==========================
      }
    });
  }
}
