import 'package:ecommerce_app/core/controllers/ship_controller.dart';
import 'package:ecommerce_app/core/models/ships.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gql_http_link/src/link.dart';
import 'package:graphql/src/graphql_client.dart';

import 'core/services/ship_service.dart';
import 'ui/widgets/ship/up_list_ship.dart';

class Home extends StatelessWidget {
  late ValueNotifier<GraphQLClient> client;

  Home(this.client, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);

    Get.put(ShipController());
    ShipController shipController = Get.find();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TextButton.icon(
                style: style,
                onPressed: () {
                  Get.toNamed("/ship");
                },
                icon: Icon(Icons.place_sharp),
                label: Text(""),
              ),
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
        ],
      ),
      body: FutureBuilder(
        future: shipController.listShips(client),
        builder: (_, AsyncSnapshot<List<Ship>> snapshot) {
          if (!snapshot.hasData) {
            return Container(
              constraints: BoxConstraints(maxWidth: 150.0),
              height: 180.0,
              child: CupertinoActivityIndicator(),
            );
          }
          return Container(
            margin: EdgeInsets.only(bottom: 30.0),
            width: double.infinity,
            height: 480.0,
            child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.vertical,
                itemBuilder: (_, int index) => ShipData(snapshot.data![index])),
          );
        },
      ),
      /*GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: */

      /*<Widget>[
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
                      onPressed: () {}),
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
          ],*/
    );
  }
}
