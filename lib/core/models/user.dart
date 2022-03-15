import 'package:get/get.dart';

class User extends GetxController {
  RxInt id = 0.obs;
  RxBool active = false.obs;
  RxString login = "".obs;
  RxString notificationType = "".obs;
  RxString password = "".obs;

  User();

  RxInt get getId => this.id;
  set setId(RxInt id) => this.id = id;

  get getActive => this.active;

  set setActive(active) => this.active = active;

  get getLogin => this.login;

  set setLogin(login) => this.login = login;

  get getNotificationType => this.notificationType;

  set setNotificationType(notificationType) =>
      this.notificationType = notificationType;

  get getPassword => this.password;

  set setPassword(password) => this.password = password;


  @override
  String toString() {
    return 'User(id: $id, active: $active, login: $login, notificationType: $notificationType, password: $password)';
  }
}
