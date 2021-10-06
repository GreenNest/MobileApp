import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_nest/config/storage/storage.dart';

import 'splash/LoadingScreen.dart';
import 'splash/splachScreen.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Storage _pref = Storage();

    return FutureBuilder(
      future: _pref.getValue("access_token"),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            return FutureBuilder(
              future: _pref.getValue("role"),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasData) {
                    String role = snapshot.data;
                    if (role != "customer") {
                      Timer(Duration(milliseconds: 2500), () {
                        Get.offAllNamed("/deliver");
                      });
                    } else {
                      Timer(Duration(milliseconds: 2500), () {
                        Get.offAllNamed("/customer");
                      });
                    }
                  }
                }
                // return SplachScreen();
                return LoadingScreen();
              },
            );
          } else {
            Timer(Duration(milliseconds: 2500), () {
              Get.offAllNamed("/login");
            });
          }
        }
        // return SplachScreen();
        return SplachScreen();
      },
    );
  }
}
