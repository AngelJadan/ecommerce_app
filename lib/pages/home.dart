import 'package:ecommerce_app/pages/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            TextButton(
              style: style,
              onPressed: () {
                Get.toNamed("/car");
              },
              child: const Icon(Icons.add_shopping_cart),
            ),
            TextButton(
              style: style,
              onPressed: () {
                Get.toNamed("/login");
              },
              child: const Icon(Icons.account_circle_rounded),
            ),
          ],
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              //child: const Text("Producto 1"),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Producto 1"),
                  Text("Precio 21"),
                  ElevatedButton(
                    child: const Icon(Icons.remove_red_eye_outlined),
                    onPressed: () {}

                  ),
                ],
              ),
              color: Colors.teal[100],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Producto 2'),
              color: Colors.teal[200],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Producto 3'),
              color: Colors.teal[300],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Producto 4'),
              color: Colors.teal[400],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Producto 5'),
              color: Colors.teal[500],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Producto 6'),
              color: Colors.teal[600],
            ),
          ],
        ));
  }
}
