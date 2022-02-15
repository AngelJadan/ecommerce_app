import 'package:ecommerce_app/models/user.dart';
import 'package:ecommerce_app/pages/consumer/catalogo.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  User _user = User();

  @override
  void onInit() {
    print("init ");
  }

  @override
  void onReady() {
    print("on ready");
  }

  void login(String usuario, String pass) {
    print("Recibido usuario: $usuario , password: $pass");
    _user.login=usuario.obs;
    _user.password=pass.obs;

    print("user $_user.login");
    if(_user.login=="Angel" && _user.password=="123"){
      print("valido");
    }else{
      print("error");
      Get.toNamed("/login");
    }
  }
  void registerConsumer(){
  }
}
