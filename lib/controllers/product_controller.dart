import 'package:ecommerce_app/models/producto.dart';
import 'package:get/get.dart';

class ProductController extends GetxController{
  


  var producto = Product();
  
  @override
  void init(){
    super.onInit();
    print("Inizialing controles product");
  }
  
  
}