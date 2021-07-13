import 'package:flutter/material.dart';
import 'package:green_nest/Signin.dart';
import 'package:green_nest/screens/welcome/components/button.dart';

import '../../Signup.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/image4.jpg',
            ),
            fit: BoxFit.cover,
          )
        ),
        alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 200.0,
                  width: 250.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      //color: Colors.yellowAccent,
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/image5.png',
                      )
                    )
                  ),
                ),
                Container(
                  //alignment: Alignment.center,
                  child: Text(
                    "Excellent Planting Service",
                    style: TextStyle(
                        fontSize: 30.0,
                        color: Color(0xFFB3BC47),
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  child: Text(
                    "Best plants and plant products",
                    style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.black
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "from the one place.",
                    style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height / 4 - 20,

                ),
                Button(
                  text: "Sign Up",
                  color: Color(0xFFF2E8CF),
                  textColor: Color(0xFF386641),
                  press: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()))
                  },
                  borderColor: Color(0xFFF2E8CF)
                ),
                Button(
                    text: "Sign In",
                    textColor: Color(0xFFF2E8CF),
                    color: Color(0xFF386641),

                    press: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Signin()))
                    },


                    borderColor: Color(0xFF386641)
                ),


              ],
            ),
          )
      ),
    );
  }
}
