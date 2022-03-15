import 'package:ecommerce_app/ui/consumer/catalogo.dart';
import 'package:ecommerce_app/ui/consumer/data_factura.dart';
import 'package:ecommerce_app/ui/consumer/register.dart';
import 'package:ecommerce_app/ui/login/login.dart';
import 'package:ecommerce_app/ui/ship/ship_create.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'home.dart';

void main() async {

  await initHiveForFlutter();

  final HttpLink httpLink = HttpLink(
    'https://api.spacex.land/graphql/',
  );

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: httpLink,
      // The default store is the InMemoryStore, which does NOT persist to disk
      cache: GraphQLCache(store: HiveStore()),
    ),
  );
  

  //runApp(const MyApp());
  runApp(
    GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => Home(client)),
        GetPage(name: '/login', page: () => Login()),
        GetPage(name: '/ship', page: () => ShipCreate()),
        GetPage(name: '/catalog',page: () => const Catalogo()),
        GetPage(name: '/register_consumer', page:() => RegisterConsumer()),
        GetPage(name: '/data_factura_consumer', page: () => DataFactura()),
      ],
    )
  );
  
}

class MyApp extends StatelessWidget {

  final ValueNotifier<GraphQLClient> client;

  const MyApp({Key? key, required this.client }) : super(key: key);
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /*return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
      //home: Catalogo(),
    );*/
    return GraphQLProvider(
      client: client,
      child: CacheProvider(
        child: MaterialApp(
          title: "Login",
          theme: ThemeData(
            primarySwatch: Colors.brown,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: Home(client),
        )
      ),
    );
  }
}