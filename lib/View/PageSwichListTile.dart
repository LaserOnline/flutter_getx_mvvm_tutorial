import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import '../ViewModel/SwitchViewModel.dart';
import '../Widget/Appbar.dart';

class PageSwichListTile extends StatefulWidget {
  final SwtichViewModel controller = Get.put(SwtichViewModel());

  @override
  State<PageSwichListTile> createState() => _PageSwichListTile();
}

class _PageSwichListTile extends State<PageSwichListTile> {
  bool _enable = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarSwitchListTile(),
      body: Column(
        children: [
          SwitchListTile(
            title: const Text("เปิด"),
            subtitle: const Text("ทดสอบ Switch"),
            value: _enable,
            onChanged: (bool value) {
              setState(() {
                _enable = value;
              });
              if (_enable) {
                widget.controller.ShowToast(context, "${_enable}", _enable);
              } else {
                widget.controller.ShowToast(context, "${_enable}", _enable);
              }
            },
          ),
        ],
      ),
    );
  }
}
