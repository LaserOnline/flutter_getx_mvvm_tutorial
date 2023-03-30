import 'package:get/state_manager.dart';
import '../Model/data/User.dart';

class UserViewModel extends GetxController {
  var users = List<User>.empty(growable: true).obs;

  @override
  void onInit() {
    super.onInit();
    fetchUsers();
  }

  void fetchUsers() async {
    await Future.delayed(
      Duration(seconds: 5),
    );
    var userList = [
      User(name: 'John', email: 'john@gmail.com'),
      User(name: 'Mary', email: 'mary@gmail.com'),
      User(name: 'Peter', email: 'peter@gmail.com'),
      User(name: 'James', email: 'james@gmail.com'),
      User(name: 'linux', email: 'linux@gmail.com'),
      User(name: 'heloworld', email: 'heloworld@gmail.com'),
      User(name: 'ryan', email: 'ryan@gmail.com'),
      User(name: 'rich', email: 'rich@gmail.com'),
      User(name: 'addison', email: 'addison@gmail.com'),
      User(name: 'Neville', email: 'Neville@gmail.com'),
      User(name: 'Pierre ', email: 'Pierre@gmail.com'),
      User(name: 'Dereck', email: 'Dereck@gmail.com'),
      User(name: 'Brooke', email: 'Brooke@gmail.com'),
      User(name: 'Kristin', email: 'Kristin@gmail.com'),
      User(name: 'Ink', email: 'Ink@gmail.com'),
    ];
    users.assignAll(userList);
  }
}
