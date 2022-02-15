import 'package:ecommerce_app/controllers/login_controller.dart';
import 'package:ecommerce_app/controllers/user_controller.dart';
import 'package:ecommerce_app/models/user.dart';
import 'package:ecommerce_app/pages/consumer/catalogo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  bool valRecord = false;
  
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserController>(
        init: UserController(),
        builder: (_) => Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: (){
                    Get.toNamed("/");
                  },
                ),
              ),
              body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        controller: user,
                        decoration: const InputDecoration(
                            labelText: "Usuario",
                            border: OutlineInputBorder(),
                            icon: const Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: const Icon(Icons.mail),
                            )),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      TextFormField(
                        controller: pass,
                        decoration: const InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder(),
                            icon: const Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: const Icon(Icons.lock),
                            )),
                        obscureText: true,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Checkbox(
                          value: this.valRecord,
                          onChanged: (_) {
                            this.valRecord = true;
                          },
                          ),
                      ElevatedButton(child: const Text("Ingresar 🙋 "),
                      onPressed: (){
                        _.login(user.text, pass.text);
                      }
                      ),
                      ElevatedButton(child: const Text("Registrarme"),
                      onPressed: () {
                        Get.toNamed("/register_consumer");
                      }
                      ),
                    ]),
              ),
            ));
  }
}