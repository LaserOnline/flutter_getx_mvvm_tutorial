import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../ViewModel/TextFieldModel.dart';

class WidgetTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final Function()? onPressed;
  final Icon;
  WidgetTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
    required this.onPressed,
    required this.Icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
          helperStyle: TextStyle(
            color: Colors.grey[500],
          ),
          suffixIcon: IconButton(
            onPressed: onPressed,
            icon: Icon,
          ),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final textfieldController = Get.put(TextFieldController());
  final Usercontroller;
  final Passcontroller;

  MyButton({
    super.key,
    required this.Usercontroller,
    required this.Passcontroller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 50,
        height: 50,
        color: Colors.black,
        child: InkWell(
          child: const Center(
            child: Text(
              "Ok",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          onTap: () {
            textfieldController.ShowData(
              Usercontroller.text,
              Passcontroller.text,
            );
          },
        ),
      ),
    );
  }
}
