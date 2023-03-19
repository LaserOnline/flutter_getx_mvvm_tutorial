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
      appBar: appbarHome("Page Home"),
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
                Title: "Page Test01",
                Page: "user",
                Width: width,
              ),
              ButtonGoPageUser(
                TextStyle: TextStyleButtonUser,
                Colors: StylesColors.amber,
                Title: "Page Test02",
                Page: "user",
                Width: width,
              ),
              ButtonGoPageUser(
                TextStyle: TextStyleButtonUser,
                Colors: StylesColors.orange,
                Title: "Page Test03",
                Page: "user",
                Width: width,
              ),
              ButtonGoPageUser(
                TextStyle: TextStyleButtonUser,
                Colors: StylesColors.secondary,
                Title: "Page Test04",
                Page: "user",
                Width: width,
              ),
              ButtonGoPageUser(
                TextStyle: TextStyleButtonUser,
                Colors: StylesColors.test,
                Title: "Page Test05",
                Page: "user",
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
