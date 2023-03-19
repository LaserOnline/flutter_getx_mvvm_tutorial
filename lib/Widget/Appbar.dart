import 'package:flutter/material.dart';
import '../Model/style/Colors.dart';
import '../Model/style/Font.dart';

appbarHome(String title) => AppBar(
      centerTitle: true,
      title: Text(
        "${title}",
        style: TextStyleFontAppbar,
      ),
      backgroundColor: StylesColors.primary,
    );

appbarUser() => AppBar(
      centerTitle: true,
      title: const Text(
        "Page User",
        style: TextStyle(
          color: StylesColors.white,
        ),
      ),
      backgroundColor: Colors.deepPurple,
    );
