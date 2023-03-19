import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import '../Widget/Appbar.dart';
import '../Widget/UserData.dart';

class PageUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarUser(),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              listData(),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey[300],
    );
  }
}
