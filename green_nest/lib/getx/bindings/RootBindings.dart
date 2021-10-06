import 'package:get/get.dart';
import 'package:green_nest/getx/deliverPerson/CompletedOders.dart';
import 'package:green_nest/getx/deliverPerson/HandOverOders.dart';
import 'package:green_nest/getx/deliverPerson/OngoingOders.dart';

class RootBindings implements Bindings{
  @override
  void dependencies() {
    Get.put<OngoingOders>(OngoingOders());
    Get.put<CompletedOders>(CompletedOders());
    Get.put<HandOverOders>(HandOverOders());
  }

}