import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import 'package:flutter_getx_mvvm_tutorial/Widget/UserData.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import '../Widget/textfield/WidgetTextField.dart';
import '../Widget/Appbar.dart';

class PageTextField extends StatefulWidget {
  PageTextField({super.key});

  @override
  State<PageTextField> createState() => _PageTextFieldState();
}

class _PageTextFieldState extends State<PageTextField> {
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  //* สร้าง ObscureText ด้วย Rx และกำหนดค่าเริ่มต้นเป็น true
  final obscureText = true.obs;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: appbarTextField(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: height / 3.5,
              ),
              WidgetTextField(
                controller: usernameController,
                hintText: "username",
                obscureText: false,
                onPressed: () {
                  usernameController.clear();
                  passwordController.clear();
                },
                Icon: Icon(Icons.cancel_sharp),
              ),
              const SizedBox(
                height: 10,
              ),
              WidgetTextField(
                controller: passwordController,
                hintText: "password",
                obscureText: obscureText.value,
                onPressed: () {
                  // * toggle boolean ระหว่าง true กับ false โดยอัตโนมัติ
                  obscureText.toggle();
                  setState(() {});
                },
                Icon: obscureText.value
                    ? const Icon(
                        Icons.visibility,
                      )
                    : const Icon(
                        Icons.visibility_off,
                      ),
              ),
              MyButton(
                Usercontroller: usernameController,
                Passcontroller: passwordController,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.amber,
    );
  }
}
