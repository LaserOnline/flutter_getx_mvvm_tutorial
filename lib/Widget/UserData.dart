import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import '../ViewModel/UserViewModel.dart';

final UserViewModel controller = Get.put(
  UserViewModel(),
);

listData() => Builder(
      builder: (BuildContext context) {
        return Expanded(
          child: Obx(
            () => ListView.builder(
              itemCount: controller.users.length,
              itemBuilder: (context, index) {
                var user = controller.users[index];
                return ListTile(
                  title: Text(user.name),
                  subtitle: Text(user.email),
                );
              },
            ),
          ),
        );
      },
    );
