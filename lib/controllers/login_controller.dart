import 'package:get/state_manager.dart';

class LoginController extends GetxController{
  
  bool _estado = false;

  bool get estado => _estado;

  void onInit(){
    super.onInit();
    print("Iniciando login");
  }

  void onReload(){
    print("Iniciando login reload");
  }

  void validar(){
    _estado = true;
    this.estado;
    update();
  }
}