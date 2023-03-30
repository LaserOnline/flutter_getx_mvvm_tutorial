import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../View/PageHome.dart';
import '../../View/PageUser.dart';
import '../../View/PageFirebases.dart';
import '../../View/PageTextField.dart';
import '../../View/PageSwichListTile.dart';

class Routes {
  static const String home = "/home";
  static const String user = "/user";
  static const String firebase = "/firebase";
  static const String textfield = "/textfield";
  static const String swichlisttile = "/swichlisttile";
  static final routes = [
    GetPage(
      name: home,
      page: () => PageHome(),
    ),
    GetPage(
      name: user,
      page: () => PageUser(),
    ),
    GetPage(
      name: firebase,
      page: () => PageFirebases(),
    ),
    GetPage(
      name: textfield,
      page: () => PageTextField(),
    ),
    GetPage(
      name: swichlisttile,
      page: () => PageSwichListTile(),
    ),
  ];
}
