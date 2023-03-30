import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class TextFieldController extends GetxController {
  var obscureText = true.obs;
  @override
  void onInit() {
    super.onInit();
  }

  ShowData(String user, String pass) async {
    if (user.isEmpty && pass.isEmpty) {
      Get.dialog(
        const AlertDialog(
          title: Text("isEmpty"),
        ),
      );
    } else {
      Get.dialog(
        AlertDialog(
          title: Text("Show"),
          content: Text("Parameter \nUser:: ${user} \nPass:: ${pass}"),
          actions: [
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Container(),
            )
          ],
        ),
      );
    }
  }
}
