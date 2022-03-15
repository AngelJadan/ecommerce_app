import 'package:ecommerce_app/core/controllers/user_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterConsumer extends StatelessWidget {
  RegisterConsumer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserController>(
        init: UserController(),
        builder: (_) => Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Get.toNamed("/login");
                  },
                ),
              ),
              body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: "Nombres y apellidos",
                            border: OutlineInputBorder(),
                            icon: const Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: const Icon(Icons.person),
                            )),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: "Correo electronico",
                            border: OutlineInputBorder(),
                            icon: const Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: const Icon(Icons.mail),
                            )),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: "Teléfono",
                            border: OutlineInputBorder(),
                            icon: const Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: const Icon(Icons.phone),
                            )),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: 'Contraseña',
                            border: OutlineInputBorder(),
                            icon: const Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: const Icon(Icons.lock),
                            )),
                        obscureText: true,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: 'Repetir contraseña',
                            border: OutlineInputBorder(),
                            icon: const Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: const Icon(Icons.lock),
                            )),
                        obscureText: true,
                      ),
                      ElevatedButton(
                          child: const Text("Siguiente"),
                          onPressed: () {
                            Get.toNamed("/data_factura_consumer");
                          }),
                    ]),
              ),
            ));
  }
}
