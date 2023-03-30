import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Model/style/Colors.dart';
import '../Model/style/Font.dart';
import '../Widget/Appbar.dart';
import '../Widget/button/WidgetButton.dart';

class PageHome extends StatelessWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: appbarHome("G E T X"),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonGoPageUser(
                TextStyle: TextStyleButtonUser,
                Colors: StylesColors.green,
                Title: "User",
                Page: "user",
                Width: width,
              ),
              ButtonGoPageUser(
                TextStyle: TextStyleButtonUser,
                Colors: StylesColors.yellow,
                Title: "Firebase Login Google",
                Page: "firebase",
                Width: width,
              ),
              ButtonGoPageUser(
                TextStyle: TextStyleButtonUser,
                Colors: StylesColors.amber,
                Title: "TextField",
                Page: "textfield",
                Width: width,
              ),
              ButtonGoPageUser(
                TextStyle: TextStyleButtonUser,
                Colors: StylesColors.orange,
                Title: "TextFromField",
                Page: "user",
                Width: width,
              ),
              ButtonGoPageUser(
                TextStyle: TextStyleButtonUser,
                Colors: StylesColors.secondary,
                Title: "Switch List Tile",
                Page: "swichlisttile",
                Width: width,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: StylesColors.primary,
    );
  }
}
