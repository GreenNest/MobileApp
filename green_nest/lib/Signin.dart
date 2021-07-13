import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:green_nest/Signup.dart';

import 'package:green_nest/screens/home/home.dart';

import 'Signup.dart';


class Signin extends StatefulWidget {
  const Signin({Key key}) : super(key: key);

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  bool obsecure = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          alignment: Alignment.bottomLeft,
          image: AssetImage(
            'assets/back2.jpg',
          ),
          fit: BoxFit.cover,
        )),
        child: ListView(
          children: <Widget>[
            Container(
                // height: size.height*0.40,
                // decoration: BoxDecoration(
                //     color: Color(0xFFF2E8CF),
                //     borderRadius: BorderRadius.only(
                //       bottomLeft: Radius.circular(36),
                //       bottomRight: Radius.circular(36),
                //     )
                // ),
                // child: Container(
                //   alignment: Alignment.topLeft,
                //   height: 250.0,
                //   //margin: EdgeInsets.only(top: 0.0),
                //
                //   child: Image.asset('assets/GreenNest.png'),
                // ),
                ),
            Container(
              margin: EdgeInsets.only(top: 100.0, right: 20, left: 20),
              alignment: Alignment.center,
              child: Text(
                "Sign In",
                style: TextStyle(
                  color: Color(0xFF386641),
                  fontSize: 50,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 120.0, right: 30, left: 30),
              width: 200,
              height: 70,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: TextFormField(
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
              margin: EdgeInsets.only(top: 5.0, right: 30, left: 30),
              width: 200,
              height: 70,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: TextField(
                obscureText: obsecure,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.yellow),
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
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
              },
              child: Container(
                height: 50,
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0xFF386641),
                    borderRadius: BorderRadius.circular(30)),
                margin: EdgeInsets.only(top: 20, bottom: 40, left: 70, right: 70),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.yellow),
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Do not have an account?',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
                    },
                    child: Text(
                      ' Sign Up',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
