import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Widget/Toast/Toast.dart';

class SwtichViewModel extends GetxController {
  void ShowToast(BuildContext context, String message, bool status) async {
    if (status) {
      CustomToast.showToast(context, message, status: status);
    } else {
      CustomToast.showToast(context, message, status: status);
    }
  }
}
