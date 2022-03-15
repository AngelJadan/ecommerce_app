import 'package:ecommerce_app/core/models/producto.dart';
import 'package:get/get.dart';

class ProductController extends GetxController{
  


  var producto = Product();
  
  @override
  void init(){
    super.onInit();
    print("Inizialing controles product");
  }
  
  @override
  void onReady(){
    super.onReady();
  }
}