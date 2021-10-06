import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:green_nest/config/Const/AuthConstant.dart';
import 'package:green_nest/config/apiRoutes/ApiRoutes.dart';

class HttpRequest {
  final String url;
  Map<String, dynamic> data;
  AuthConstant _authConst = AuthConstant();
  String baseurl = ApiRoutes.API_BASE_URL;

  HttpRequest({
    @required this.url,
    this.data,
  });

  Future postLoginData() async {
    Response response = await Dio().post(baseurl + this.url, data: data);
    try {
      if (response.statusCode == 200) {
        _authConst.storeToken(response.data["token"]);
        _authConst.storeRole(response.data["roles"][0]);
        _authConst.storeId(response.data["eid"]);

        return "Login Success";
      }
      // }
    } catch (e) {
      if (response.statusCode == 401) {
        return response.data["message"];
      }
      return "An Undefined Error Happened";
    }
  }

  Future postRegisterData() async {

    try {
      Response response =
      await Dio().post(baseurl + this.url, data: data);

      if (response.data != false) {
        return true;
      }

      return false;
    } catch (e) {
      return false;
    }
  }

  Future<String> postData() async {
    Options optionlist = await getOptions();
    try {
      Response response =
      await Dio().post(baseurl + this.url, data: data, options: optionlist);
      return response.data["message"];
    } on DioError catch (err) {
      return err.toString();
    }
  }

  Future<String> getData() async {
    Options optionlist = await getOptions();

    Response response =
    await Dio().get(baseurl + this.url, options: optionlist);
    // Logger().i(response.toString());
    if (response.statusCode == 200) {
      return jsonEncode(response.data);
    } else {
      return "Error";
    }

    // Logger().i(response.data.toString());
  }

  Future<bool> putData() async {
    Options optionlist = await getOptions();

    Response response =
    await Dio().put(baseurl + this.url, data: data, options: optionlist);
    if (response.data == true) {
      return true;
    } else
      return false;
  }

  Future<bool> delData() async {
    Options optionlist = await getOptions();

    Response response =
    await Dio().delete(baseurl + this.url, options: optionlist);

    if (response.statusCode == 200) {
      return true;
    } else
      return false;
  }

  Future<Options> getOptions() async {
    String apikey = await AuthConstant().getApiKey();

    return Options(
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ' + (apikey)
      },
      validateStatus: (status) {
        return status < 500;
      },
    );
  }
}
