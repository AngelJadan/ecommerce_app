import 'package:ecommerce_app/pages/consumer/catalogo.dart';
import 'package:ecommerce_app/pages/consumer/data_factura.dart';
import 'package:ecommerce_app/pages/consumer/register.dart';
import 'package:ecommerce_app/pages/home.dart';
import 'package:ecommerce_app/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

void main() {
  //runApp(const MyApp());
  runApp(
    GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => Home()),
        GetPage(name: '/login', page: () => Login()),
        GetPage(name: '/catalog',page: () => Catalogo()),
        GetPage(name: '/register_consumer', page:() => RegisterConsumer()),
        GetPage(name: '/data_factura_consumer', page: () => DataFactura()),
      ],
    )
  );
  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
      //home: Catalogo(),
    );
  }
}