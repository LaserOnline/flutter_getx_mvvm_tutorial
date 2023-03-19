import 'package:get/get.dart';
import './RoutesPage.dart';

class GoPage {
  static Gotohome() async {
    Get.toNamed('/home');
  }

  static GotoUser() async {
    Get.toNamed('/user');
  }
}
