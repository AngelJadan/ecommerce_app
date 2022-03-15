import 'package:ecommerce_app/core/models/ships.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../core/controllers/ship_controller.dart';

class ShipCreate extends StatelessWidget{
  const ShipCreate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return GetBuilder<ShipController>(
      init: ShipController(),
      builder: (_) =>Scaffold(
        appBar: AppBar(
                actions: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Get.toNamed("/login");
                    },
                ),
                    ],
                  )
                ]
              ),
              body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: "Imagen",
                            border: OutlineInputBorder(),
                            icon: const Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: const Icon(Icons.person),
                            )),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: "name",
                            border: OutlineInputBorder(),
                            icon: const Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: const Icon(Icons.mail),
                            )),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: "url",
                            border: OutlineInputBorder(),
                            icon: const Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: const Icon(Icons.phone),
                            )),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: 'year',
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
      ),
    );
  }

}