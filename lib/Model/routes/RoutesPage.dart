import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../View/PageHome.dart';
import '../../View/PageUser.dart';

class Routes {
  static const String home = "/home";
  static const String user = "/user";
  static final routes = [
    GetPage(
      name: home,
      page: () => PageHome(),
    ),
    GetPage(
      name: user,
      page: () => PageUser(),
    ),
  ];
}
