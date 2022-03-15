
import 'dart:convert';

import 'package:ecommerce_app/core/models/ships.dart';
import 'package:ecommerce_app/core/services/ship_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class ShipController extends GetxController{

  @override
  void init(client) async {
    super.onInit();
    listShips(client);
    print("Inizialing controles product");
  }

  @override
  void reload() {
    super.onInit();
    print("Reload. ");
  }

  Future<List<Ship>> listShips(client) async {
    List<Ship> listShip = [];
    try {
      //print("options");
      ValueNotifier<GraphQLClient> cli = client;
      
      //Responsive y motation, subcription.

      final HttpLink httpLink = HttpLink('https://api.spacex.land/graphql/',);
      GraphQLClient cliente = GraphQLClient(link: httpLink, cache: GraphQLCache(store: HiveStore()) );
      //print("cliente $cliente");
      ShipService shipService = ShipService(cliente);
      var ships= await shipService.getShipConecction();

    
    for (int i = 0; i <ships.length;i++) {
      var year = 0;
      if((ships[i]['yearBuilt'])!=null){
        year = int.parse(ships[i]['yearBuilt']);
      }

      Ship ship = Ship(id: ships[i]['id'], url: (ships[i]['url']).toString(), image: (ships[i]['image']).toString(), name: ships[i]['name'], yearBuilt: year );
      listShip.add(ship);
    }
    //print("List  $listShip");
    } catch (e) {
      print("Error generado $e");
    }
    return listShip;
  }

  bool saveShip(Ship ship){
    print("Name: "+ship.name);
    print("Url: "+ship.url);
    return true;
  }

}