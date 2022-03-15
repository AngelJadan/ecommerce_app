import 'package:ecommerce_app/core/controllers/user_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DataFactura extends StatelessWidget{
  const DataFactura({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserController>(
      init: UserController(),
      builder: (_) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: (){
                    Get.toNamed("/register_consumer");
                  },
                ),
        ),
        body: Center(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                        decoration: const InputDecoration(
                            labelText: "Calle principal",
                            border: OutlineInputBorder(),
                            icon: const Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: const Icon(Icons.streetview_rounded),
                            )
                            ),
                            
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: "Calle secundaria",
                            border: OutlineInputBorder(),
                            icon: const Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: const Icon(Icons.streetview_rounded),
                            )
                            ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: "Número",
                            border: OutlineInputBorder(),
                            icon: const Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: const Icon(Icons.streetview_rounded),
                            ),
                            ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: "Identificación",
                            border: OutlineInputBorder(),
                            icon: const Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: const Icon(Icons.grid_3x3),
                            ),
                            ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: "Teléfono",
                            border: OutlineInputBorder(),
                            icon: const Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: const Icon(Icons.phone),
                            ),
                            ),
                      ),
                      ElevatedButton(
                          child: const Text("Registrar"),
                          onPressed: () {
                          }),
                      
              ],
            ),
          )
        ),
      ),
    );
  }

}