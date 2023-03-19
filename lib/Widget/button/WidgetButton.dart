import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Model/routes/RoutesPage.dart';

class ButtonGoPageUser extends StatelessWidget {
  final TextStyle;
  final Colors;
  final Title;
  final Page;
  final Width;

  const ButtonGoPageUser({
    super.key,
    required this.TextStyle,
    required this.Colors,
    required this.Title,
    required this.Page,
    required this.Width,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Get.toNamed("${Page}");
        },
        child: Container(
          padding: const EdgeInsets.all(
            25,
          ),
          margin: EdgeInsets.symmetric(
            horizontal: Width / 5.5,
          ),
          decoration: BoxDecoration(
            color: Colors,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              "${Title}",
              style: TextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
