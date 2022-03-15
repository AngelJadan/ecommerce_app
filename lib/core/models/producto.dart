import 'package:get/get.dart';

class Product extends GetxController {
  RxInt id = 0.obs;
  RxString name = "".obs;
  RxInt paquete_id = 0.obs;
  RxString image_url = "".obs;
  RxInt list_price = 0.obs;
  RxDouble price = 0.0.obs;
  RxInt rental = 0.obs;
  RxInt purchase_ok = 0.obs;
  RxInt active = 0.obs;
  RxInt availability = 0.obs;
  RxInt brand = 0.obs;
  RxInt calculo_kardex = 0.obs;
  RxInt can_image_1024_be_zoomed = 0.obs;
  RxInt categ_id = 0.obs;
  RxString category = "".obs;
  RxString color = "".obs;
  RxInt get getId => this.id;

  Product();
  set setId(RxInt id) => this.id = id;

  get getName => this.name;

  set setName(name) => this.name = name;

  get paqueteid => this.paquete_id;

  set paqueteid(value) => this.paquete_id = value;

  get imageurl => this.image_url;

  set imageurl(value) => this.image_url = value;

  get listprice => this.list_price;

  set listprice(value) => this.list_price = value;

  get getPrice => this.price;

  set setPrice(price) => this.price = price;

  get getRental => this.rental;

  set setRental(rental) => this.rental = rental;

  get purchaseok => this.purchase_ok;

  set purchaseok(value) => this.purchase_ok = value;

  get getActive => this.active;

  set setActive(active) => this.active = active;

  get getAvailability => this.availability;

  set setAvailability(availability) => this.availability = availability;

  get getBrand => this.brand;

  set setBrand(brand) => this.brand = brand;

  get calculokardex => this.calculo_kardex;

  set calculokardex(value) => this.calculo_kardex = value;

  get canimage_1024_be_zoomed => this.can_image_1024_be_zoomed;

  set canimage_1024_be_zoomed(value) => this.can_image_1024_be_zoomed = value;

  get categid => this.categ_id;

  set categid(value) => this.categ_id = value;

  get getCategory => this.category;

  set setCategory(category) => this.category = category;

  get getColor => this.color;

  set setColor(color) => this.color = color;

/*
  Product(
      this.name,
      this.paquete_id,
      this.id,
      this.image_url,
      this.list_price,
      this.price,
      this.rental,
      this.purchase_ok,
      this.active,
      this.availability,
      this.brand,
      this.calculo_kardex,
      this.can_image_1024_be_zoomed,
      this.categ_id,
      this.category,
      this.color);
*/
  @override
  String toString() {
    return 'Product(id: $id, name: $name, paquete_id: $paquete_id, image_url: $image_url, list_price: $list_price, price: $price, rental: $rental, purchase_ok: $purchase_ok, active: $active, availability: $availability, brand: $brand, calculo_kardex: $calculo_kardex, can_image_1024_be_zoomed: $can_image_1024_be_zoomed, categ_id: $categ_id, category: $category, color: $color)';
  }
}
