import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import '../Widget/Appbar.dart';
import '../ViewModel/UserViewModel.dart';
import '../Widget/UserData.dart';

class PageUser extends StatelessWidget {
  final UserViewModel controller = Get.put(UserViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarUser(),
      body: SafeArea(
        child: Center(
          child: Obx(() {
            if (controller.users.isEmpty) {
              return CircularProgressIndicator();
            } else {
              return Column(
                children: [
                  listData(),
                ],
              );
            }
          }),
        ),
      ),
      backgroundColor: Colors.grey[300],
    );
  }
}
