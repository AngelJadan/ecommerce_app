
// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

import 'package:get/state_manager.dart';
import 'package:meta/meta.dart' show required;

class ShipRx{
  final RxString id;
  final RxString? image;
  final RxString name;
  final RxString? url;
  final RxInt? yearBuilt;

  ShipRx( {
   required this.id,
   this.image,
   required this.name,
   this.url,
   this.yearBuilt
   });
  
}

class Ship {

  late ShipRx shipRx;
    Ship({
        required String id,
        String? url,
        String? image,
        required String name,
        int? yearBuilt
    }){
      this.shipRx = ShipRx(id: id.obs, image: image!.obs, name: name.obs, url: url!.obs, yearBuilt: yearBuilt!.obs);
    }    
    

    String get id => this.shipRx.id.value;
    set id(String id){
      this.shipRx.id.value = id;
    }

    String get url => this.shipRx.url!.value;
    set url(String url){
      if(url == null){
        this.shipRx.url!.value = "";
      }else{
        this.shipRx.url!.value = url;
      }
    }

     String get image => this.shipRx.image!.value;
    set image(String image){
      if(image == null){
        this.shipRx.image!.value = "";
      }else{
        this.shipRx.image!.value = image;
      }
    }
    
    String get name => this.shipRx.name.value;
    set name(String name){
      this.shipRx.name.value = name;
    }

    int get yearBuilt => this.shipRx.yearBuilt!.value;
    set yearBuilt(int yearBuilt){
      if(yearBuilt==null){
        this.shipRx.yearBuilt!.value = 0;
      }else{
        this.shipRx.yearBuilt!.value = yearBuilt;
      }
    }

    factory Ship.fromJson(Map<String, dynamic> json) => Ship(
        id: json["id"],
        url: json["url"] == null ? null : json["url"],
        image: json["image"] == null ? null : json["image"],
        name: json["name"],
        yearBuilt: json["year_built"] == null ? null : json["year_built"],
    );
  
  
  }
