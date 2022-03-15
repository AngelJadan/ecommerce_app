import 'dart:convert';

import 'package:ecommerce_app/core/models/ships.dart';
import 'package:ecommerce_app/core/services/domain/ship_domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'dart:async';
import 'package:http/http.dart' as http;


class ShipService{
  GraphQLClient _client;
  
  ShipService(this._client);

  Future<List> getShipConecction() async{
    List <dynamic> dat=[];
   try {
      QueryResult result =  await _client.query(QueryOptions(document: gql(listAll)));
    if(result!=null){
      dat = result.data?["ships"] as List<dynamic>;
    }
   } catch (e) {
     print("Error: $e");
   }finally{
     return dat;
   }
  }
}


/*
Future<Ship> fetchPost() async {
  print('llega');
  final response = 
  await http.post(Uri.parse("https://api.spacex.land/graphql/"),headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    }, body: """
            {
                  ships {
                    url
                    id
                    image
                    name
                    year_built
                  }
                }
""",
    );
  if (response.statusCode == 200) {
    // Si la llamada al servidor fue exitosa, analiza el JSON
    return Ship.fromJson(json.decode(response.body));
  } else {
    // Si la llamada no fue exitosa, lanza un error.
    throw Exception('Failed to load post');
  }
}
*/


/*
final httpLink = HttpLink(uri: "https://api.spacex.land/graphql/");

class ShipService extends  GetxController{

  ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(
          cache: InMemoryCache(),
          link: httpLink
      )
  );

  final String _query ="""
  {
      ships {
        url
        id
        image
        name
        year_built
      }
    }
  """;

   @override
   Widget build(BuildContext context) {
     return Query(
        options: QueryOptions(
                        documentNode: gql(_query),
                        fetchPolicy: FetchPolicy.noCache,
                        errorPolicy: ErrorPolicy.all,
                        pollInterval: 5,
        ),
     );
   }

}
*/


/*
import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class ShipService {

  Future<dynamic> fetchPost() async {
    final response =
        await http.post('https://api.spacex.land/graphql/'),
        body: {};

    if (response.statusCode == 200) {
      // Si la llamada al servidor fue exitosa, analiza el JSON
      return response.body;
    } else {
      // Si la llamada no fue exitosa, lanza un error.
      throw Exception('Failed to load post');
    }
  }

}
*************************
import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

final httpLink = HttpLink(uri: "https://api.spacex.land/graphql/");

  ValueNotifier<GraphQLClient> client =
      ValueNotifier(GraphQLClient(cache: InMemoryCache(), link: httpLink));

  final String ships = """
    {
      ships {
        url
        id
        image
        name
        year_built
      }
    }
""";
  
final QueryOptions options = QueryOptions(
  documentNode: gql(ships),
);*/