import 'dart:convert';

import 'package:get/get.dart';
import 'package:green_nest/config/Const/AuthConstant.dart';
import 'package:green_nest/models/Oders.dart';
import 'package:green_nest/services/HttpRequest.dart';
import 'package:url_launcher/url_launcher.dart';

class OngoingOders extends GetxController {
  RxBool isLoad = false.obs;
  RxList<Oders> list = <Oders>[].obs;
  RxMap isSelected = {}.obs;

  @override
  void onInit() {
    isLoad.value = true;
    AuthConstant().getId().then((value) {
      if (value != null) {
        fetchOders(value);
      }
    });

    super.onInit();
  }

  fetchOders(String id) async {
    String _url = 'getProcessingOrderDetails/$id';
    String response = await HttpRequest(url: _url).getData();
    if (response != "Error") {
      List data = jsonDecode(response);
      list.assignAll(data.map((s) => Oders.fromMap(s)).toList());
      isLoad.value = false;
    }
  }

  Future<bool> setDilivered(int id) async {
    String _url = "assignDelivered/$id";

    bool response = await HttpRequest(url: _url).putData();

    if (response) {
      return true;
    }

    return false;
  }

  Future<void> makeCall(int num) async
  {
    String url = 'tel:$num';
    if(await canLaunch(url)) {
      await launch(url);
    }
  }
}
