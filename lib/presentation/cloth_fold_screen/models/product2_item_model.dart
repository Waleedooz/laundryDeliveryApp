import 'package:get/get.dart';

/// This class is used in the [product2_item_widget] screen.

class Product2ItemModel {
  Rx<String> itemnameTxt = Rx("Apron");

  Rx<String>? id = Rx("");

  String? image;
  String? title;
  String? price;
  int? qty;
  Product2ItemModel(this.image,this.title,this.price,this.qty);
}
