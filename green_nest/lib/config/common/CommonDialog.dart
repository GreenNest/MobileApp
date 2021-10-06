import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_nest/config/theme/colorPalette.dart';
import 'package:green_nest/widgets/CustomButton.dart';
import 'package:green_nest/widgets/text/CustomText.dart';

// ============================== GETX FOR DIALOGS WITHOUT CONTEXT =============================================

class CommonDialog {
  createProgress(msg) {
    return Get.dialog(
      AlertDialog(
        content: Container(
          height: 100,
          child: Row(
            children: [
              SizedBox(
                width: 5,
              ),
              CircularProgressIndicator(),
              SizedBox(
                width: 40,
              ),
              Wrap(children: [Text(msg)])
            ],
          ),
        ),
      ),
      barrierDismissible: true,
    );
  }

  // ================================== DIFFERENT ALERT BOXES BELOW. CUSTOMIZE THOSE YOUR OWN WAY ===========================

//   showAlertDialog(String title, String msg, VoidCallback callback) async {
//     await Get.dialog(
//       Dialog(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//         child: Container(
//           width: 30.w,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Container(
//                 margin: EdgeInsets.only(
//                   top: 2.w,
//                 ),
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(10)),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(
//                       Icons.check_circle,
//                       size: 10.h,
//                       color: ColorPalette.PRIMARY_COLOR,
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(10)),
//                 margin: EdgeInsets.symmetric(
//                   horizontal: 5.w,
//                 ),
//                 child: Column(
//                   children: [
//                     Container(
//                       margin: EdgeInsets.symmetric(vertical: 2.w),
//                       child: CustomText(
//                         text: msg,
//                         color: ColorPalette.PRIMARY_COLOR,
//                         weight: FontWeight.w500,
//                         textAlign: TextAlign.center,
//                         size: 4.w,
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(bottom: 2.w),
//                       child: CustomButton(
//                         isText: true,
//                         bgColor: ColorPalette.PRIMARY_COLOR,
//                         textColor: ColorPalette.BG_COLOR,
//                         title: "OK",
//                         textSize: 4.sp,
//                         callback: () {
//                           callback();
//                         },
//                         radius: 10.0,
//                       ),
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//       barrierDismissible: true,
//       transitionDuration: Duration(milliseconds: 500),
//       transitionCurve: Curves.easeOutCubic,
//     );
//   }

//   showErrorDialog(String msg) async {
//     await Get.dialog(
//       Dialog(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//         child: Container(
//           width: 30.w,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Container(
//                 // height: 15.h,
//                 margin: EdgeInsets.only(
//                   top: 2.w,
//                 ),
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(10)),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(
//                       Icons.cancel,
//                       size: 10.h,
//                       color: Colors.black87,
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(10)),
//                 margin: EdgeInsets.symmetric(
//                   horizontal: 5.w,
//                 ),
//                 child: Column(
//                   children: [
//                     Container(
//                       margin: EdgeInsets.symmetric(vertical: 2.w),
//                       child: CustomText(
//                         text: msg,
//                         color: ColorPalette.PRIMARY_COLOR,
//                         weight: FontWeight.w500,
//                         textAlign: TextAlign.center,
//                         size: 4.w,
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(bottom: 2.w),
//                       child: CustomButton(
//                         isText: true,
//                         bgColor: ColorPalette.PRIMARY_COLOR,
//                         textColor: ColorPalette.BG_COLOR,
//                         title: "OK",
//                         textSize: 4.sp,
//                         callback: () {
//                           Get.back();
//                         },
//                         radius: 10.0,
//                       ),
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//       barrierDismissible: true,
//       transitionDuration: Duration(milliseconds: 500),
//       transitionCurve: Curves.easeOutCubic,
//     );
//   }

  Future<bool> confirmDialog(String msg) async {
    return await Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          width: 50,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 7),
                      child: CustomText(
                        text: msg,
                        color: ColorPalette.PRIMARY_COLOR,
                        weight: FontWeight.w500,
                        textAlign: TextAlign.center,
                        size:16,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: CustomButton(
                            isText: false,
                            bgColor: Colors.grey,
                            textColor: ColorPalette.BG_COLOR,
                            title: "Cancel",
                            textSize: 10,
                            callback: () {
                              Get.back(result: false);
                            },
                            radius: 10.0,
                            vMargin: 6,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: CustomButton(
                            isText: false,
                            bgColor: ColorPalette.PRIMARY_COLOR,
                            textColor: ColorPalette.BG_COLOR,
                            title: "Confirm",
                            textSize: 10,
                            callback: () {
                              Get.back(result: true);
                            },
                            radius: 10.0,
                            vMargin: 6,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      barrierDismissible: true,
      transitionDuration: Duration(milliseconds: 500),
      transitionCurve: Curves.easeOutCubic,
    );
  }

//   showSnackBar({
//     required String msg,
//     required VoidCallback callback,
//     required String button,
//   }) {
//     return Get.snackbar(
//       "",
//       "",
//       backgroundColor: ColorPalette.PRIMARY_COLOR.withOpacity(0.9),
//       titleText: Container(),
//       messageText: Container(
//         child: Row(
//           children: [
//             Expanded(
//               child: CustomText(
//                 text: msg,
//                 color: Colors.white,
//                 size: 4.w,
//               ),
//             ),
//             Container(
//               child: TextButton(
//                 child: Text(button),
//                 onPressed: callback,
//                 style: TextButton.styleFrom(
//                   primary: ColorPalette.BUTTON_COLOR,
//                   backgroundColor: Colors.transparent,
//                   textStyle: TextStyle(fontSize: 4.w),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//       snackPosition: SnackPosition.BOTTOM,
//       borderRadius: 10.0,
//       maxWidth: 100.w,
//       margin: EdgeInsets.symmetric(horizontal: 1.5.w, vertical: 3.w),
//       padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.w),
//       duration: Duration(milliseconds: 2500),
//     );
//   }

//   showNotify({
//     required String msg,
//   }) {
//     return Get.snackbar(
//       "",
//       "",
//       backgroundColor: ColorPalette.SECONDARY_COLOR.withOpacity(0.9),
//       titleText: Container(),
//       messageText: Container(
//         child: Row(
//           children: [
//             Expanded(
//               child: CustomText(
//                 text: msg,
//                 color: Colors.black,
//                 size: 4.w,
//               ),
//             ),
//           ],
//         ),
//       ),
//       snackPosition: SnackPosition.BOTTOM,
//       borderRadius: 10.0,
//       maxWidth: 100.w,
//       margin: EdgeInsets.symmetric(horizontal: 1.5.w, vertical: 3.w),
//       padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.w),
//       duration: Duration(milliseconds: 2500),
//     );
//   }
}
